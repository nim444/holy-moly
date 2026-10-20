# ChatInfo

Type: System  
Namespace: `C_ChatInfo`  
Environment: All

## Functions

### C_ChatInfo.AreOutgoingAddonChatMessagesRestricted

```lua
C_ChatInfo.AreOutgoingAddonChatMessagesRestricted() -> isRestricted: bool
```

Returns false if addons are allowed to send outgoing chat messages. This is controlled on a realm-by-realm basis (tournament realms allow it), and the ability for addons to receive comms is controlled separately.

### C_ChatInfo.CanPlayerSpeakLanguage

```lua
C_ChatInfo.CanPlayerSpeakLanguage(languageId: number) -> canSpeakLanguage: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.CancelEmote

```lua
C_ChatInfo.CancelEmote()
```

### C_ChatInfo.DropCautionaryChatMessage

```lua
C_ChatInfo.DropCautionaryChatMessage(confirmNumber: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.GetChannelInfoFromIdentifier

```lua
C_ChatInfo.GetChannelInfoFromIdentifier(channelIdentifier: cstring) -> info: ChatChannelInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ChatInfo.GetChannelRosterInfo

```lua
C_ChatInfo.GetChannelRosterInfo(channelIndex: luaIndex, rosterIndex: luaIndex) -> name: string, owner: bool, moderator: bool, guid: WOWGUID
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ChatInfo.GetChannelRuleset

```lua
C_ChatInfo.GetChannelRuleset(channelIndex: luaIndex) -> ruleset: ChatChannelRuleset
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.GetChannelRulesetForChannelID

```lua
C_ChatInfo.GetChannelRulesetForChannelID(channelID: number) -> ruleset: ChatChannelRuleset
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.GetChannelShortcut

```lua
C_ChatInfo.GetChannelShortcut(channelIndex: luaIndex) -> shortcut: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.GetChannelShortcutForChannelID

```lua
C_ChatInfo.GetChannelShortcutForChannelID(channelID: number) -> shortcut: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.GetChatLineSenderGUID

```lua
C_ChatInfo.GetChatLineSenderGUID(chatLine: number) -> guid: WOWGUID
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.GetChatLineSenderName

```lua
C_ChatInfo.GetChatLineSenderName(chatLine: number) -> name: string
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.GetChatLineText

```lua
C_ChatInfo.GetChatLineText(chatLine: number) -> text: string
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.GetChatTypeName

```lua
C_ChatInfo.GetChatTypeName(typeID: number) -> name: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.GetClubStreamIDs

```lua
C_ChatInfo.GetClubStreamIDs(clubID: ClubId) -> ids: table<ClubStreamId>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.GetColorForChatType

```lua
C_ChatInfo.GetColorForChatType(chatType: cstring) -> color: colorRGB?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.GetGeneralChannelID

```lua
C_ChatInfo.GetGeneralChannelID() -> channelID: number
```

### C_ChatInfo.GetGeneralChannelLocalID

```lua
C_ChatInfo.GetGeneralChannelLocalID() -> localID: number?
```

### C_ChatInfo.GetMentorChannelID

```lua
C_ChatInfo.GetMentorChannelID() -> channelID: number
```

### C_ChatInfo.GetNumActiveChannels

```lua
C_ChatInfo.GetNumActiveChannels() -> numChannels: number
```

### C_ChatInfo.GetNumReservedChatWindows

```lua
C_ChatInfo.GetNumReservedChatWindows() -> numReserved: number
```

### C_ChatInfo.GetRegisteredAddonMessagePrefixes

```lua
C_ChatInfo.GetRegisteredAddonMessagePrefixes() -> registeredPrefixes: table<cstring>
```

### C_ChatInfo.InChatMessagingLockdown

```lua
C_ChatInfo.InChatMessagingLockdown() -> isRestricted: bool
```

Returns true if API security restrictions regarding chat messaging are in effect.

### C_ChatInfo.IsAddonMessagePrefixRegistered

```lua
C_ChatInfo.IsAddonMessagePrefixRegistered(prefix: cstring) -> isRegistered: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.IsChannelRegional

```lua
C_ChatInfo.IsChannelRegional(channelIndex: luaIndex) -> isRegional: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.IsChannelRegionalForChannelID

```lua
C_ChatInfo.IsChannelRegionalForChannelID(channelID: number) -> isRegional: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.IsChatLineCensored

```lua
C_ChatInfo.IsChatLineCensored(chatLine: number) -> isCensored: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.IsLoggingChat

```lua
C_ChatInfo.IsLoggingChat() -> enabled: bool
```

### C_ChatInfo.IsLoggingCombat

```lua
C_ChatInfo.IsLoggingCombat() -> enabled: bool, advanced: bool
```

### C_ChatInfo.IsPartyChannelType

```lua
C_ChatInfo.IsPartyChannelType(channelType: ChatChannelType) -> isPartyChannelType: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.IsRegionalServiceAvailable

```lua
C_ChatInfo.IsRegionalServiceAvailable() -> available: bool
```

### C_ChatInfo.IsTimerunningPlayer

```lua
C_ChatInfo.IsTimerunningPlayer(playerGUID: WOWGUID) -> isTimerunning: bool
```

Secret: SecretArguments=AllowedWhenTainted  

### C_ChatInfo.IsValidChatLine

```lua
C_ChatInfo.IsValidChatLine(chatLine: number?) -> isValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.IsValidCombatFilterName

```lua
C_ChatInfo.IsValidCombatFilterName(name: cstring) -> isApproved: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.PerformEmote

```lua
C_ChatInfo.PerformEmote(emoteName: cstring, targetName: cstring?, suppressMoveError: bool = false) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_ChatInfo.RegisterAddonMessagePrefix

```lua
C_ChatInfo.RegisterAddonMessagePrefix(prefix: cstring) -> result: RegisterAddonMessagePrefixResult
```

Secret: SecretArguments=AllowedWhenUntainted  

Registers interest in addon messages with this prefix, cannot be an empty string.

### C_ChatInfo.ReplaceIconAndGroupExpressions

```lua
C_ChatInfo.ReplaceIconAndGroupExpressions(input: string, noIconReplacement: bool?, noGroupReplacement: bool?) -> output: string
```

Secret: SecretArguments=AllowedWhenTainted  

### C_ChatInfo.RequestCanLocalWhisperTarget

```lua
C_ChatInfo.RequestCanLocalWhisperTarget(whisperTarget: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.ResetDefaultZoneChannels

```lua
C_ChatInfo.ResetDefaultZoneChannels()
```

### C_ChatInfo.SendAddonMessage

```lua
C_ChatInfo.SendAddonMessage(prefix: cstring, message: cstring, chatType: cstring?, target: cstring?) -> result: SendAddonMessageResult
```

Secret: SecretArguments=NotAllowed  

Sends a text payload to other clients specified by chatChannel and target which are registered to listen for prefix.

### C_ChatInfo.SendAddonMessageLogged

```lua
C_ChatInfo.SendAddonMessageLogged(prefix: cstring, message: cstring, chatType: cstring?, target: cstring?) -> result: SendAddonMessageResult?
```

Secret: SecretArguments=NotAllowed  

Sends a text payload to other clients specified by chatChannel and target which are registered to listen for prefix. Intended for plain text payloads; logged and throttled.

### C_ChatInfo.SendCautionaryChatMessage

```lua
C_ChatInfo.SendCautionaryChatMessage(confirmNumber: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.SendChatMessage

```lua
C_ChatInfo.SendChatMessage(message: cstring, chatType: SendChatMessageType?, languageID: number?, target: cstring?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RestrictedForMacroChatMessages  

### C_ChatInfo.SwapChatChannelsByChannelIndex

```lua
C_ChatInfo.SwapChatChannelsByChannelIndex(firstChannelIndex: luaIndex, secondChannelIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChatInfo.UncensorChatLine

```lua
C_ChatInfo.UncensorChatLine(chatLine: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ALTERNATIVE_DEFAULT_LANGUAGE_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### BN_CHAT_MSG_ADDON

Payload: `prefix: cstring, text: cstring, channel: cstring, senderID: number`  
Flags: SynchronousEvent  

### CAN_LOCAL_WHISPER_TARGET_RESPONSE

Payload: `whisperTarget: WOWGUID, status: ChatWhisperTargetStatus`  
Flags: UniqueEvent  

### CAN_PLAYER_SPEAK_LANGUAGE_CHANGED

Payload: `languageId: number, canSpeakLanguage: bool`  
Flags: UniqueEvent  

### CAUTIONARY_CHANNEL_MESSAGE

Payload: `confirmNumber: number`  
Flags: SynchronousEvent  

### CAUTIONARY_CHAT_MESSAGE

Payload: `chatLineID: number, confirmNumber: number`  
Flags: SynchronousEvent  

### CHANNEL_COUNT_UPDATE

Payload: `displayIndex: number, count: number`  
Flags: SynchronousEvent  

### CHANNEL_FLAGS_UPDATED

Payload: `displayIndex: number`  
Flags: SynchronousEvent  

### CHANNEL_INVITE_REQUEST

Payload: `channelID: cstring, name: cstring`  
Flags: SynchronousEvent  

### CHANNEL_LEFT

Payload: `chatChannelID: number, name: cstring`  
Flags: SynchronousEvent  

### CHANNEL_PASSWORD_REQUEST

Payload: `channelID: cstring`  
Flags: SynchronousEvent  

### CHANNEL_ROSTER_UPDATE

Payload: `displayIndex: number, count: number`  
Flags: SynchronousEvent  

### CHANNEL_UI_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### CHAT_COMBAT_MSG_ARENA_POINTS_GAIN

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_LOGGING_CHANGED

Payload: `whichLog: number, isEnabled: bool`  
Flags: SynchronousEvent  

### CHAT_MSG_ACHIEVEMENT

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_ADDON

Payload: `prefix: cstring, text: cstring, channel: cstring, sender: cstring, target: cstring, zoneChannelID: number, localID: number, name: cstring, instanceID: number`  
Flags: SynchronousEvent  

### CHAT_MSG_ADDON_LOGGED

Payload: `prefix: cstring, text: cstring, channel: cstring, sender: cstring, target: cstring, zoneChannelID: number, localID: number, name: cstring, instanceID: number`  
Flags: SynchronousEvent  

### CHAT_MSG_AFK

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_BG_SYSTEM_ALLIANCE

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_BG_SYSTEM_HORDE

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_BG_SYSTEM_NEUTRAL

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_BN

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_BN_INLINE_TOAST_ALERT

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_BN_INLINE_TOAST_BROADCAST

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_BN_INLINE_TOAST_BROADCAST_INFORM

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_BN_INLINE_TOAST_CONVERSATION

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_BN_WHISPER

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_BN_WHISPER_INFORM

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_BN_WHISPER_PLAYER_OFFLINE

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_CHANNEL

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_CHANNEL_JOIN

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_CHANNEL_LEAVE

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_CHANNEL_LEAVE_PREVENTED

Payload: `channelName: cstring`  
Flags: SynchronousEvent  

### CHAT_MSG_CHANNEL_LIST

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_CHANNEL_NOTICE

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_CHANNEL_NOTICE_USER

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_COLLECTED_APPEARANCE

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_COMBAT_FACTION_CHANGE

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_COMBAT_HONOR_GAIN

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_COMBAT_MISC_INFO

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_COMBAT_XP_GAIN

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_COMMUNITIES_CHANNEL

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_CURRENCY

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_DND

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_EMOTE

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_FILTERED

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_GUILD

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_GUILD_ACHIEVEMENT

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_GUILD_DISCORD

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_GUILD_ITEM_LOOTED

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_IGNORED

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_INSTANCE_CHAT

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_INSTANCE_CHAT_LEADER

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_LOOT

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_MONEY

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_MONSTER_EMOTE

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_MONSTER_PARTY

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_MONSTER_SAY

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_MONSTER_WHISPER

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_MONSTER_YELL

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_OFFICER

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_OPENING

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_PARTY

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_PARTY_LEADER

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_PET_BATTLE_COMBAT_LOG

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_PET_BATTLE_INFO

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_PET_INFO

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_PING

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_RAID

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_RAID_BOSS_EMOTE

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_RAID_BOSS_WHISPER

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_RAID_LEADER

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_RAID_WARNING

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_RESTRICTED

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SynchronousEvent  

### CHAT_MSG_SAY

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_SKILL

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_SYSTEM

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_TARGETICONS

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_TEXT_EMOTE

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_TRADESKILLS

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_VOICE_TEXT

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_WHISPER

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_WHISPER_INFORM

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_MSG_YELL

Payload: `text: cstring, playerName: cstring, languageName: cstring, channelName: cstring, playerName2: cstring, specialFlags: cstring, zoneChannelID: number, channelIndex: number, channelBaseName: cstring, languageID: number, lineID: number, guid: WOWGUID, bnSenderID: number, isMobile: bool, isSubtitle: bool, hideSenderInLetterbox: bool, suppressRaidIcons: bool, discordInfo: DiscordChatInfo`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### CHAT_REGIONAL_SEND_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### CHAT_REGIONAL_STATUS_CHANGED

Payload: `isServiceAvailable: bool`  
Flags: SynchronousEvent  

### CHAT_SERVER_DISCONNECTED

Payload: `isInitialMessage: bool?`  
Flags: SynchronousEvent  

### CHAT_SERVER_RECONNECTED

Payload: `none`  
Flags: SynchronousEvent  

### CLEAR_BOSS_EMOTES

Payload: `none`  
Flags: SynchronousEvent  

### DAILY_RESET_INSTANCE_WELCOME

Payload: `mapname: cstring, timeLeft: number`  
Flags: SynchronousEvent  

### INSTANCE_RESET_WARNING

Payload: `warningMessage: cstring, timeLeft: number`  
Flags: SynchronousEvent  

### LANGUAGE_LIST_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### NOTIFY_CHAT_SUPPRESSED

Payload: `none`  
Flags: SynchronousEvent  

### QUEST_BOSS_EMOTE

Payload: `text: cstring, playerName: cstring, displayTime: number, enableBossEmoteWarningSound: bool`  
Flags: SynchronousEvent  

### RAID_BOSS_EMOTE

Payload: `text: cstring, playerName: cstring, displayTime: number, enableBossEmoteWarningSound: bool`  
Flags: SynchronousEvent  

### RAID_BOSS_WHISPER

Payload: `text: cstring, playerName: cstring, displayTime: number, enableBossEmoteWarningSound: bool`  
Flags: SynchronousEvent  

### RAID_INSTANCE_WELCOME

Payload: `mapname: cstring, timeLeft: number, locked: number, extended: number`  
Flags: SynchronousEvent  

### UPDATE_CHAT_COLOR

Payload: `name: cstring, r: number, g: number, b: number`  
Flags: SynchronousEvent  

### UPDATE_CHAT_COLOR_NAME_BY_CLASS

Payload: `name: cstring, colorNameByClass: bool`  
Flags: SynchronousEvent  

### UPDATE_CHAT_WINDOWS

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_FLOATING_CHAT_WINDOWS

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### ChatMessageEventParams (Structure)

- `text: cstring`
- `playerName: cstring`
- `languageName: cstring`
- `channelName: cstring`
- `playerName2: cstring`
- `specialFlags: cstring`
- `zoneChannelID: number`
- `channelIndex: number`
- `channelBaseName: cstring`
- `languageID: number`
- `lineID: number`
- `guid: WOWGUID`
- `bnSenderID: number`
- `isMobile: bool`
- `isSubtitle: bool`
- `hideSenderInLetterbox: bool`
- `suppressRaidIcons: bool`
- `discordInfo: DiscordChatInfo`

### SendChatMessageParams (Structure)

- `message: cstring`
- `chatType: SendChatMessageType?` Chat type string ('SAY', 'EMOTE', etc.). Defaults to 'SAY' if not specified.
- `languageID: number?` Language to send the message in.
- `target: cstring?` Name of the player to send a message to. Only applies to chat types that support targeted messages.
