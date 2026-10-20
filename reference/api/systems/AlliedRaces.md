# AlliedRaces

Type: System  
Namespace: `C_AlliedRaces`  
Environment: All

## Functions

### C_AlliedRaces.GetAllRacialAbilitiesFromID

```lua
C_AlliedRaces.GetAllRacialAbilitiesFromID(raceID: number) -> allDisplayInfo: table<AlliedRaceRacialAbility>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_AlliedRaces.GetRaceInfoByID

```lua
C_AlliedRaces.GetRaceInfoByID(raceID: number) -> info: AlliedRaceInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

## Events

### ALLIED_RACE_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### ALLIED_RACE_OPEN

Payload: `raceID: number`  
Flags: SynchronousEvent  

## Tables

### AlliedRaceInfo (Structure)

- `raceID: number`
- `maleModelID: number`
- `femaleModelID: number`
- `achievementIds: table<number>`
- `maleName: cstring`
- `femaleName: cstring`
- `description: cstring`
- `raceFileString: cstring`
- `crestAtlas: textureAtlas`
- `modelBackgroundAtlas: textureAtlas`
- `bannerColor: colorRGB`

### AlliedRaceRacialAbility (Structure)

- `description: cstring`
- `name: cstring`
- `icon: fileID`
