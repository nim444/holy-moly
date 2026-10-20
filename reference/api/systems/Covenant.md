# Covenant

Type: System  
Namespace: `C_Covenants`  
Environment: All

## Functions

### C_Covenants.GetActiveCovenantID

```lua
C_Covenants.GetActiveCovenantID() -> covenantID: number
```

### C_Covenants.GetCovenantData

```lua
C_Covenants.GetCovenantData(covenantID: number) -> data: CovenantData?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Covenants.GetCovenantIDs

```lua
C_Covenants.GetCovenantIDs() -> covenantID: table<number>
```

## Events

### COVENANT_CHOSEN

Payload: `covenantID: number`  
Flags: SynchronousEvent  

## Tables

### CovenantData (Structure)

- `ID: number`
- `textureKit: textureKit`
- `celebrationSoundKit: number`
- `animaChannelSelectSoundKit: number`
- `animaChannelActiveSoundKit: number`
- `animaGemsFullSoundKit: number`
- `animaNewGemSoundKit: number`
- `animaReinforceSelectSoundKit: number`
- `upgradeTabSelectSoundKitID: number`
- `reservoirFullSoundKitID: number`
- `beginResearchSoundKitID: number`
- `renownFanfareSoundKitID: number`
- `factionID: number`
- `name: cstring`
- `soulbindIDs: table<number>`
