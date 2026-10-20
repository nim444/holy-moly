# PartyPose

Type: System  
Namespace: `C_PartyPose`  
Environment: All

## Functions

### C_PartyPose.ExtraAction

```lua
C_PartyPose.ExtraAction(partyPoseID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PartyPose.GetPartyPoseInfoByID

```lua
C_PartyPose.GetPartyPoseInfoByID(mapID: number) -> info: PartyPoseInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PartyPose.GetPartyPoseInfoByMapID

```lua
C_PartyPose.GetPartyPoseInfoByMapID(mapID: number) -> info: PartyPoseInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PartyPose.HasExtraAction

```lua
C_PartyPose.HasExtraAction(partyPoseID: number) -> hasExtraAction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### SHOW_PARTY_POSE_UI

Payload: `mapID: number, won: bool`  
Flags: SynchronousEvent  

## Tables

### PartyPoseInfo (Structure)

- `partyPoseID: number`
- `mapID: number`
- `widgetSetID: number?`
- `victoryModelSceneID: number`
- `defeatModelSceneID: number`
- `victorySoundKitID: number`
- `defeatSoundKitID: number`
- `uiTextureKit: textureKit?`
- `titleText: string?`
- `extraButtonText: string?`
- `flags: PartyPoseFlags`
