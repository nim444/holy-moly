# CreatureInfo

Type: System  
Namespace: `C_CreatureInfo`  
Environment: All

## Functions

### C_CreatureInfo.GetClassInfo

```lua
C_CreatureInfo.GetClassInfo(classID: number) -> classInfo: ClassInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CreatureInfo.GetCreatureFamilyIDs

```lua
C_CreatureInfo.GetCreatureFamilyIDs() -> creatureFamilyIDs: table<number>
```

### C_CreatureInfo.GetCreatureFamilyInfo

```lua
C_CreatureInfo.GetCreatureFamilyInfo(creatureFamilyID: number) -> creatureFamilyInfo: CreatureFamilyInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CreatureInfo.GetCreatureID

```lua
C_CreatureInfo.GetCreatureID(creatureGUID: WOWGUID) -> creatureID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CreatureInfo.GetCreatureTypeIDs

```lua
C_CreatureInfo.GetCreatureTypeIDs() -> creatureTypeIDs: table<number>
```

### C_CreatureInfo.GetCreatureTypeInfo

```lua
C_CreatureInfo.GetCreatureTypeInfo(creatureTypeID: number) -> creatureTypeInfo: CreatureTypeInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CreatureInfo.GetFactionInfo

```lua
C_CreatureInfo.GetFactionInfo(raceID: number) -> factionInfo: FactionInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CreatureInfo.GetRaceInfo

```lua
C_CreatureInfo.GetRaceInfo(raceID: number) -> raceInfo: RaceInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### ClassInfo (Structure)

- `className: string`
- `classFile: string`
- `classID: number`

### CreatureFamilyInfo (Structure)

- `id: number`
- `name: cstring`
- `iconFile: fileID?`

### CreatureTypeInfo (Structure)

- `id: number`
- `name: cstring`

### FactionInfo (Structure)

- `name: cstring`
- `groupTag: cstring`

### RaceInfo (Structure)

- `raceName: string`
- `clientFileString: string`
- `raceID: number`
