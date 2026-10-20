# VoiceChat

Type: System  
Namespace: `C_VoiceChat`  
Environment: All

## Functions

### C_VoiceChat.ActivateChannel

```lua
C_VoiceChat.ActivateChannel(channelID: VoiceChatID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.ActivateChannelTranscription

```lua
C_VoiceChat.ActivateChannelTranscription(channelID: VoiceChatID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.BeginLocalCapture

```lua
C_VoiceChat.BeginLocalCapture(listenToLocalUser: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.CanAccessSettings

```lua
C_VoiceChat.CanAccessSettings() -> canAccess: bool
```

### C_VoiceChat.CanPlayerUseVoiceChat

```lua
C_VoiceChat.CanPlayerUseVoiceChat() -> canUseVoiceChat: bool
```

### C_VoiceChat.CreateChannel

```lua
C_VoiceChat.CreateChannel(channelDisplayName: cstring) -> status: VoiceChatStatusCode
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.DeactivateChannel

```lua
C_VoiceChat.DeactivateChannel(channelID: VoiceChatID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.DeactivateChannelTranscription

```lua
C_VoiceChat.DeactivateChannelTranscription(channelID: VoiceChatID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.EndLocalCapture

```lua
C_VoiceChat.EndLocalCapture()
```

### C_VoiceChat.GetActiveChannelID

```lua
C_VoiceChat.GetActiveChannelID() -> channelID: VoiceChatID?
```

### C_VoiceChat.GetActiveChannelType

```lua
C_VoiceChat.GetActiveChannelType() -> channelType: ChatChannelType?
```

### C_VoiceChat.GetActiveVoiceProviderID

```lua
C_VoiceChat.GetActiveVoiceProviderID() -> activeVoiceProviderID: VoiceProviderID
```

### C_VoiceChat.GetAvailableInputDevices

```lua
C_VoiceChat.GetAvailableInputDevices() -> inputDevices: table<VoiceAudioDevice>?
```

### C_VoiceChat.GetAvailableOutputDevices

```lua
C_VoiceChat.GetAvailableOutputDevices() -> outputDevices: table<VoiceAudioDevice>?
```

### C_VoiceChat.GetChannel

```lua
C_VoiceChat.GetChannel(channelID: VoiceChatID) -> channel: VoiceChatChannel
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_VoiceChat.GetChannelForChannelType

```lua
C_VoiceChat.GetChannelForChannelType(channelType: ChatChannelType) -> channel: VoiceChatChannel
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_VoiceChat.GetChannelForCommunityStream

```lua
C_VoiceChat.GetChannelForCommunityStream(clubId: ClubId, streamId: ClubStreamId) -> channel: VoiceChatChannel
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_VoiceChat.GetCommunicationMode

```lua
C_VoiceChat.GetCommunicationMode() -> communicationMode: CommunicationMode?
```

### C_VoiceChat.GetCurrentVoiceChatConnectionStatusCode

```lua
C_VoiceChat.GetCurrentVoiceChatConnectionStatusCode() -> statusCode: VoiceChatStatusCode?
```

### C_VoiceChat.GetInputVolume

```lua
C_VoiceChat.GetInputVolume() -> volume: number?
```

### C_VoiceChat.GetJoinClubVoiceChannelError

```lua
C_VoiceChat.GetJoinClubVoiceChannelError(clubId: ClubId) -> errorReason: VoiceChannelErrorReason?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.GetLocalPlayerActiveChannelMemberInfo

```lua
C_VoiceChat.GetLocalPlayerActiveChannelMemberInfo() -> memberInfo: VoiceChatMember?
```

### C_VoiceChat.GetLocalPlayerMemberID

```lua
C_VoiceChat.GetLocalPlayerMemberID(channelID: VoiceChatID) -> memberID: VoiceChatID?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.GetMasterVolumeScale

```lua
C_VoiceChat.GetMasterVolumeScale() -> scale: number
```

### C_VoiceChat.GetMemberGUID

```lua
C_VoiceChat.GetMemberGUID(memberID: VoiceChatID, channelID: VoiceChatID) -> memberGUID: WOWGUID
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.GetMemberID

```lua
C_VoiceChat.GetMemberID(channelID: VoiceChatID, memberGUID: WOWGUID) -> memberID: VoiceChatID?
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.GetMemberInfo

```lua
C_VoiceChat.GetMemberInfo(memberID: VoiceChatID, channelID: VoiceChatID) -> memberInfo: VoiceChatMember?
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.GetMemberName

```lua
C_VoiceChat.GetMemberName(memberID: VoiceChatID, channelID: VoiceChatID) -> memberName: string?
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.GetMemberVolume

```lua
C_VoiceChat.GetMemberVolume(playerLocation: PlayerLocation) -> volume: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.GetOutputVolume

```lua
C_VoiceChat.GetOutputVolume() -> volume: number?
```

### C_VoiceChat.GetPTTButtonPressedState

```lua
C_VoiceChat.GetPTTButtonPressedState() -> isPressed: bool?
```

### C_VoiceChat.GetProcesses

```lua
C_VoiceChat.GetProcesses() -> processes: table<VoiceChatProcess>
```

Flags: MayReturnNothing  

### C_VoiceChat.GetPushToTalkBinding

```lua
C_VoiceChat.GetPushToTalkBinding() -> keys: table<string>?
```

### C_VoiceChat.GetRemoteTtsVoices

```lua
C_VoiceChat.GetRemoteTtsVoices() -> ttsVoices: table<VoiceTtsVoiceType>
```

### C_VoiceChat.GetTtsVoices

```lua
C_VoiceChat.GetTtsVoices() -> ttsVoices: table<VoiceTtsVoiceType>
```

### C_VoiceChat.GetVADSensitivity

```lua
C_VoiceChat.GetVADSensitivity() -> sensitivity: number?
```

### C_VoiceChat.IsChannelJoinPending

```lua
C_VoiceChat.IsChannelJoinPending(channelType: ChatChannelType, clubId: ClubId?, streamId: ClubStreamId?) -> isPending: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.IsDeafened

```lua
C_VoiceChat.IsDeafened() -> isDeafened: bool?
```

### C_VoiceChat.IsEnabled

```lua
C_VoiceChat.IsEnabled() -> isEnabled: bool
```

### C_VoiceChat.IsLoggedIn

```lua
C_VoiceChat.IsLoggedIn() -> isLoggedIn: bool
```

### C_VoiceChat.IsMemberLocalPlayer

```lua
C_VoiceChat.IsMemberLocalPlayer(memberID: VoiceChatID, channelID: VoiceChatID) -> isLocalPlayer: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.IsMemberMuted

```lua
C_VoiceChat.IsMemberMuted(playerLocation: PlayerLocation) -> mutedForMe: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.IsMemberMutedForAll

```lua
C_VoiceChat.IsMemberMutedForAll(memberID: VoiceChatID, channelID: VoiceChatID) -> mutedForAll: bool?
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.IsMemberSilenced

```lua
C_VoiceChat.IsMemberSilenced(memberID: VoiceChatID, channelID: VoiceChatID) -> silenced: bool?
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.IsMuted

```lua
C_VoiceChat.IsMuted() -> isMuted: bool?
```

### C_VoiceChat.IsParentalDisabled

```lua
C_VoiceChat.IsParentalDisabled() -> isParentalDisabled: bool
```

### C_VoiceChat.IsParentalMuted

```lua
C_VoiceChat.IsParentalMuted() -> isParentalMuted: bool
```

### C_VoiceChat.IsPlayerUsingVoice

```lua
C_VoiceChat.IsPlayerUsingVoice(playerLocation: PlayerLocation) -> isUsingVoice: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.IsSilenced

```lua
C_VoiceChat.IsSilenced() -> isSilenced: bool?
```

### C_VoiceChat.IsSpeakForMeActive

```lua
C_VoiceChat.IsSpeakForMeActive() -> isActive: bool
```

### C_VoiceChat.IsSpeakForMeAllowed

```lua
C_VoiceChat.IsSpeakForMeAllowed() -> isAllowed: bool
```

### C_VoiceChat.IsTranscribing

```lua
C_VoiceChat.IsTranscribing() -> isTranscribing: bool
```

### C_VoiceChat.IsTranscriptionAllowed

```lua
C_VoiceChat.IsTranscriptionAllowed() -> isAllowed: bool
```

### C_VoiceChat.IsVoiceChatConnected

```lua
C_VoiceChat.IsVoiceChatConnected() -> connected: bool
```

### C_VoiceChat.LeaveChannel

```lua
C_VoiceChat.LeaveChannel(channelID: VoiceChatID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.Login

```lua
C_VoiceChat.Login(channelType: ChatChannelType?) -> status: VoiceChatStatusCode
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.Logout

```lua
C_VoiceChat.Logout() -> status: VoiceChatStatusCode
```

### C_VoiceChat.MarkChannelsDiscovered

```lua
C_VoiceChat.MarkChannelsDiscovered()
```

Once the UI has enumerated all channels, use this to reset the channel discovery state, it will be updated again if appropriate

### C_VoiceChat.RequestJoinAndActivateCommunityStreamChannel

```lua
C_VoiceChat.RequestJoinAndActivateCommunityStreamChannel(clubId: ClubId, streamId: ClubStreamId)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.RequestJoinChannelByChannelType

```lua
C_VoiceChat.RequestJoinChannelByChannelType(channelType: ChatChannelType, autoActivate: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.RestoreActiveVoiceProvider

```lua
C_VoiceChat.RestoreActiveVoiceProvider() -> changed: bool
```

Changes the active voice provider to the party voice provider, or to the preferred voice provider when the party has none.

### C_VoiceChat.SetActiveVoiceProvider

```lua
C_VoiceChat.SetActiveVoiceProvider(voiceProviderID: VoiceProviderID) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Changes the active voice provider without changing the preferred voice provider.

### C_VoiceChat.SetCommunicationMode

```lua
C_VoiceChat.SetCommunicationMode(communicationMode: CommunicationMode)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.SetDeafened

```lua
C_VoiceChat.SetDeafened(isDeafened: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.SetInputDevice

```lua
C_VoiceChat.SetInputDevice(deviceID: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.SetInputVolume

```lua
C_VoiceChat.SetInputVolume(volume: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.SetMasterVolumeScale

```lua
C_VoiceChat.SetMasterVolumeScale(scale: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.SetMemberMuted

```lua
C_VoiceChat.SetMemberMuted(playerLocation: PlayerLocation, muted: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.SetMemberVolume

```lua
C_VoiceChat.SetMemberVolume(playerLocation: PlayerLocation, volume: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Adjusts member volume across all channels

### C_VoiceChat.SetMuted

```lua
C_VoiceChat.SetMuted(isMuted: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.SetOutputDevice

```lua
C_VoiceChat.SetOutputDevice(deviceID: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.SetOutputVolume

```lua
C_VoiceChat.SetOutputVolume(volume: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.SetPortraitTexture

```lua
C_VoiceChat.SetPortraitTexture(textureObject: SimpleTexture, memberID: VoiceChatID, channelID: VoiceChatID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.SetPushToTalkBinding

```lua
C_VoiceChat.SetPushToTalkBinding(keys: table<string>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.SetVADSensitivity

```lua
C_VoiceChat.SetVADSensitivity(sensitivity: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.ShouldDiscoverChannels

```lua
C_VoiceChat.ShouldDiscoverChannels() -> shouldDiscoverChannels: bool
```

Use this while loading to determine if the UI should attempt to rediscover the previously joined/active voice channels

### C_VoiceChat.SpeakRemoteTextSample

```lua
C_VoiceChat.SpeakRemoteTextSample(text: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.SpeakText

```lua
C_VoiceChat.SpeakText(voiceID: number, text: cstring, rate: number, volume: number, overlap: bool = false)
```

Secret: SecretArguments=AllowedWhenTainted  

SpeakText also supports XML TTS tags on Windows including bookmarks - see SAPI XML TTS Tutorial in Microsoft's online documentation for more information.

### C_VoiceChat.StopSpeakingText

```lua
C_VoiceChat.StopSpeakingText()
```

### C_VoiceChat.ToggleDeafened

```lua
C_VoiceChat.ToggleDeafened()
```

### C_VoiceChat.ToggleMemberMuted

```lua
C_VoiceChat.ToggleMemberMuted(playerLocation: PlayerLocation)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VoiceChat.ToggleMuted

```lua
C_VoiceChat.ToggleMuted()
```

## Events

### VOICE_CHAT_ACTIVE_INPUT_DEVICE_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### VOICE_CHAT_ACTIVE_OUTPUT_DEVICE_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### VOICE_CHAT_ACTIVE_VOICE_PROVIDER_CHANGED

Payload: `voiceProviderID: VoiceProviderID`  
Flags: SynchronousEvent  

### VOICE_CHAT_AUDIO_CAPTURE_ENERGY

Payload: `isSpeaking: bool, energy: number`  
Flags: SynchronousEvent  

### VOICE_CHAT_AUDIO_CAPTURE_STARTED

Payload: `none`  
Flags: SynchronousEvent  

### VOICE_CHAT_AUDIO_CAPTURE_STOPPED

Payload: `none`  
Flags: SynchronousEvent  

### VOICE_CHAT_CHANNEL_ACTIVATED

Payload: `channelID: VoiceChatID`  
Flags: SynchronousEvent  

### VOICE_CHAT_CHANNEL_DEACTIVATED

Payload: `channelID: VoiceChatID`  
Flags: SynchronousEvent  

### VOICE_CHAT_CHANNEL_DISPLAY_NAME_CHANGED

Payload: `channelID: VoiceChatID, channelDisplayName: cstring`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### VOICE_CHAT_CHANNEL_JOINED

Payload: `status: VoiceChatStatusCode, channelID: VoiceChatID, channelType: ChatChannelType, clubId: ClubId?, streamId: ClubStreamId?`  
Flags: SynchronousEvent  

### VOICE_CHAT_CHANNEL_MEMBER_ACTIVE_STATE_CHANGED

Payload: `memberID: VoiceChatID, channelID: VoiceChatID, isActive: bool`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### VOICE_CHAT_CHANNEL_MEMBER_ADDED

Payload: `memberID: VoiceChatID, channelID: VoiceChatID`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### VOICE_CHAT_CHANNEL_MEMBER_ENERGY_CHANGED

Payload: `memberID: VoiceChatID, channelID: VoiceChatID, speakingEnergy: number`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### VOICE_CHAT_CHANNEL_MEMBER_GUID_UPDATED

Payload: `memberID: VoiceChatID, channelID: VoiceChatID`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### VOICE_CHAT_CHANNEL_MEMBER_MUTE_FOR_ALL_CHANGED

Payload: `memberID: VoiceChatID, channelID: VoiceChatID, isMutedForAll: bool`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### VOICE_CHAT_CHANNEL_MEMBER_MUTE_FOR_ME_CHANGED

Payload: `memberID: VoiceChatID, channelID: VoiceChatID, isMutedForMe: bool`  
Flags: SynchronousEvent  

### VOICE_CHAT_CHANNEL_MEMBER_REMOVED

Payload: `memberID: VoiceChatID, channelID: VoiceChatID`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### VOICE_CHAT_CHANNEL_MEMBER_SILENCED_CHANGED

Payload: `memberID: VoiceChatID, channelID: VoiceChatID, isSilenced: bool`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### VOICE_CHAT_CHANNEL_MEMBER_SPEAKING_STATE_CHANGED

Payload: `memberID: VoiceChatID, channelID: VoiceChatID, isSpeaking: bool`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### VOICE_CHAT_CHANNEL_MEMBER_STT_MESSAGE

Payload: `memberID: VoiceChatID, channelID: VoiceChatID, message: string, language: string`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### VOICE_CHAT_CHANNEL_MEMBER_VOLUME_CHANGED

Payload: `memberID: VoiceChatID, channelID: VoiceChatID, volume: number`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### VOICE_CHAT_CHANNEL_MUTE_STATE_CHANGED

Payload: `channelID: VoiceChatID, isMuted: bool`  
Flags: SynchronousEvent  

### VOICE_CHAT_CHANNEL_PTT_CHANGED

Payload: `channelID: VoiceChatID, pushToTalkSetting: cstring`  
Flags: SynchronousEvent  

### VOICE_CHAT_CHANNEL_REMOVED

Payload: `channelID: VoiceChatID`  
Flags: SynchronousEvent  

### VOICE_CHAT_CHANNEL_TRANSCRIBING_CHANGED

Payload: `channelID: VoiceChatID, isTranscribing: bool`  
Flags: SynchronousEvent  

### VOICE_CHAT_CHANNEL_TRANSMIT_CHANGED

Payload: `channelID: VoiceChatID, isTransmitting: bool`  
Flags: SynchronousEvent  

### VOICE_CHAT_CHANNEL_VOLUME_CHANGED

Payload: `channelID: VoiceChatID, volume: number`  
Flags: SynchronousEvent  

### VOICE_CHAT_COMMUNICATION_MODE_CHANGED

Payload: `communicationMode: CommunicationMode`  
Flags: SynchronousEvent  

### VOICE_CHAT_CONNECTION_SUCCESS

Payload: `none`  
Flags: SynchronousEvent  

### VOICE_CHAT_DEAFENED_CHANGED

Payload: `isDeafened: bool`  
Flags: SynchronousEvent  

### VOICE_CHAT_DISCORD_SETTINGS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### VOICE_CHAT_ERROR

Payload: `platformCode: number, statusCode: VoiceChatStatusCode`  
Flags: SynchronousEvent  

### VOICE_CHAT_INPUT_DEVICES_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### VOICE_CHAT_LOGIN

Payload: `status: VoiceChatStatusCode`  
Flags: SynchronousEvent  

### VOICE_CHAT_LOGOUT

Payload: `status: VoiceChatStatusCode`  
Flags: SynchronousEvent  

### VOICE_CHAT_MUTED_CHANGED

Payload: `isMuted: bool`  
Flags: SynchronousEvent  

### VOICE_CHAT_OUTPUT_DEVICES_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### VOICE_CHAT_PENDING_CHANNEL_JOIN_STATE

Payload: `channelType: ChatChannelType, clubId: ClubId?, streamId: ClubStreamId?, pendingJoin: bool`  
Flags: SynchronousEvent  

### VOICE_CHAT_PTT_BUTTON_PRESSED_STATE_CHANGED

Payload: `isPressed: bool`  
Flags: SynchronousEvent  

### VOICE_CHAT_SILENCED_CHANGED

Payload: `isSilenced: bool`  
Flags: SynchronousEvent  

### VOICE_CHAT_SPEAK_FOR_ME_ACTIVE_STATUS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### VOICE_CHAT_SPEAK_FOR_ME_FEATURE_STATUS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### VOICE_CHAT_TTS_PLAYBACK_BOOKMARK

Payload: `utteranceID: number, bookmarkName: cstring`  
Flags: SynchronousEvent  

### VOICE_CHAT_TTS_PLAYBACK_FAILED

Payload: `utteranceID: number, status: VoiceTtsStatusCode`  
Flags: SynchronousEvent  

### VOICE_CHAT_TTS_PLAYBACK_FINISHED

Payload: `utteranceID: number`  
Flags: SynchronousEvent  

### VOICE_CHAT_TTS_PLAYBACK_STARTED

Payload: `utteranceID: number`  
Flags: SynchronousEvent  

### VOICE_CHAT_TTS_SPEAK_TEXT_UPDATE

Payload: `status: VoiceTtsStatusCode, utteranceID: number`  
Flags: SynchronousEvent  

### VOICE_CHAT_TTS_VOICES_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### VOICE_CHAT_VAD_SETTINGS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### VOICE_CHAT_VOICE_PROVIDER_CHANGED

Payload: `voiceProviderID: VoiceProviderID`  
Flags: SynchronousEvent  

### VOICE_CHAT_VOICE_PROVIDERS_AVAILABLE_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### CommunicationMode (Enumeration)

| Name | Value |
|---|---|
| PushToTalk | 0 |
| OpenMic | 1 |

### VoiceChannelErrorReason (Enumeration)

| Name | Value |
|---|---|
| Unknown | 0 |
| IsBattleNetChannel | 1 |

### VoiceChatStatusCode (Enumeration)

| Name | Value |
|---|---|
| Success | 0 |
| OperationPending | 1 |
| TooManyRequests | 2 |
| LoginProhibited | 3 |
| ClientNotInitialized | 4 |
| ClientNotLoggedIn | 5 |
| ClientAlreadyLoggedIn | 6 |
| ChannelNameTooShort | 7 |
| ChannelNameTooLong | 8 |
| ChannelAlreadyExists | 9 |
| AlreadyInChannel | 10 |
| TargetNotFound | 11 |
| Failure | 12 |
| ServiceLost | 13 |
| UnableToLaunchProxy | 14 |
| ProxyConnectionTimeOut | 15 |
| ProxyConnectionUnableToConnect | 16 |
| ProxyConnectionUnexpectedDisconnect | 17 |
| Disabled | 18 |
| UnsupportedChatChannelType | 19 |
| InvalidCommunityStream | 20 |
| PlayerSilenced | 21 |
| PlayerVoiceChatParentalDisabled | 22 |
| InvalidInputDevice | 23 |
| InvalidOutputDevice | 24 |
| PlayerVoiceChatAgeVerificationRestricted | 25 |

### VoiceProviderID (Enumeration)

| Name | Value |
|---|---|
| Legacy | 0 |
| Discord | 1 |

### VoiceTtsStatusCode (Enumeration)

| Name | Value |
|---|---|
| Success | 0 |
| InvalidEngineType | 1 |
| EngineAllocationFailed | 2 |
| NotSupported | 3 |
| MaxCharactersExceeded | 4 |
| UtteranceBelowMinimumDuration | 5 |
| InputTextEnqueued | 6 |
| SdkNotInitialized | 7 |
| DestinationQueueFull | 8 |
| EnqueueNotNecessary | 9 |
| UtteranceNotFound | 10 |
| ManagerNotFound | 11 |
| InvalidArgument | 12 |
| InternalError | 13 |

### VoiceAudioDevice (Structure)

- `deviceID: string`
- `displayName: string`
- `isActive: bool`
- `isSystemDefault: bool`
- `isCommsDefault: bool`

### VoiceChatChannel (Structure)

- `name: string`
- `channelID: VoiceChatID`
- `channelType: ChatChannelType`
- `clubId: ClubId`
- `streamId: ClubStreamId`
- `volume: number`
- `isActive: bool`
- `isMuted: bool`
- `isTransmitting: bool`
- `isTranscribing: bool`
- `members: table<VoiceChatMember>`

### VoiceChatMember (Structure)

- `energy: number`
- `memberID: VoiceChatID`
- `isActive: bool`
- `isSpeaking: bool`
- `isMutedForAll: bool`
- `isSilenced: bool`

### VoiceChatProcess (Structure)

- `name: string`
- `channels: table<VoiceChatChannel>`

### VoiceTtsVoiceType (Structure)

- `voiceID: number`
- `name: string`
