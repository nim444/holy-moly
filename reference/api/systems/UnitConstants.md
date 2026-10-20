# UnitConstants

Type: None

## Tables

### AddPrivateAuraAnchorArgs (Structure)

- `unitToken: cstring`
- `auraIndex: number`
- `parent: SimpleFrame`
- `showCooldownFrame: bool = false`
- `showCooldownEdge: bool = false`
- `showCountdownNumbers: bool = false`
- `showDispelIcon: bool = false`
- `isContainer: bool = false`
- `iconInfo: PrivateAuraIconInfo?`
- `durationAnchor: AnchorBinding?`

### GroupBuffVisualAlertInfo (Structure)

- `spellID: number`
- `visualValue: VisualAlertType`

### PrivateAuraIconInfo (Structure)

- `iconAnchor: AnchorBinding`
- `iconWidth: uiUnit`
- `iconHeight: uiUnit`
- `borderScale: uiUnit?`

### UnitAuraSoundInfo (Structure)

- `unitToken: string`
- `spellID: number`
- `soundFileName: string?` Sound file to play. Playback stops after five seconds.
- `soundFileID: number?` Sound file to play. Playback stops after five seconds.
- `outputChannel: string?`
- `throttleSeconds: number?` Minimum time in seconds between plays. Must be between 0 and 5 seconds, inclusive. Invalid values reject registration.

### UnitAuraUpdateInfo (Structure)

- `isFullUpdate: bool = false`
- `removedAuraInstanceIDs: table<number>?`
- `addedAuras: table<AuraData>?`
- `updatedAuraInstanceIDs: table<number>?`

### UnitPrivateAuraAnchorInfo (Structure)

- `anchorID: number`
- `unitToken: string`
- `auraIndex: number`
- `showCooldownFrame: bool = false`
- `showCooldownEdge: bool = false`
- `showCountdownNumbers: bool = false`
- `showDispelIcon: bool = false`
- `iconWidth: uiUnit?`
- `iconHeight: uiUnit?`
- `borderScale: uiUnit?`
- `isContainer: bool?`
- `parent: SimpleFrame`
