# SpecializationShared

Type: System  
Environment: All

## Functions

### GetSpecializationInfoForClassID

```lua
GetSpecializationInfoForClassID(classID: number, index: luaIndex, gender: UnitSex?) -> id: number, name: cstring, description: string, icon: fileID, role: cstring, recommended: bool, allowedForBoost: bool, masterySpell1: number?, masterySpell2: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetSpecializationInfoForSpecID

```lua
GetSpecializationInfoForSpecID(specID: number, gender: UnitSex?) -> id: number, name: cstring, description: string, icon: fileID, role: cstring, recommended: bool, allowedForBoost: bool, masterySpell1: number?, masterySpell2: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetSpecializationNameForSpecID

```lua
GetSpecializationNameForSpecID(specID: number, gender: UnitSex?) -> name: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetSpecializationSystem

```lua
GetSpecializationSystem() -> system: SpecializationSystem
```

### HasLootSpecializations

```lua
HasLootSpecializations() -> hasLootSpecializations: bool
```

## Tables

### SpecializationSystem (Enumeration)

| Name | Value |
|---|---|
| TalentTab | 0 |
| ChrSpecialization | 1 |

### SpecializationInfoResult (Structure)

- `id: number`
- `name: cstring`
- `description: string`
- `icon: fileID`
- `role: cstring`
- `recommended: bool`
- `allowedForBoost: bool`
- `masterySpell1: number?`
- `masterySpell2: number?`
