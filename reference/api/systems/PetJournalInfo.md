# PetJournalInfo

Type: System  
Namespace: `C_PetJournal`  
Environment: All

## Functions

### C_PetJournal.ClearHoveredBattlePet

```lua
C_PetJournal.ClearHoveredBattlePet()
```

### C_PetJournal.ClearSearchFilter

```lua
C_PetJournal.ClearSearchFilter()
```

### C_PetJournal.DismissSummonedPet

```lua
C_PetJournal.DismissSummonedPet(petID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetJournal.GetDisplayIDByIndex

```lua
C_PetJournal.GetDisplayIDByIndex(speciesID: number, index: luaIndex) -> displayID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetJournal.GetDisplayProbabilityByIndex

```lua
C_PetJournal.GetDisplayProbabilityByIndex(speciesID: number, index: luaIndex) -> displayProbability: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetJournal.GetNonBattlePetLinkByIndex

```lua
C_PetJournal.GetNonBattlePetLinkByIndex(index: luaIndex) -> link: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetJournal.GetNumDisplays

```lua
C_PetJournal.GetNumDisplays(speciesID: number) -> numDisplays: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetJournal.GetNumPetsInJournal

```lua
C_PetJournal.GetNumPetsInJournal(creatureID: number) -> maxAllowed: number, numPets: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetJournal.GetOwnedPetIDs

```lua
C_PetJournal.GetOwnedPetIDs() -> ownedPetIDs: table<WOWGUID>
```

### C_PetJournal.GetPetAbilityInfo

```lua
C_PetJournal.GetPetAbilityInfo(abilityID: number) -> name: string, icon: fileID, petType: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PetJournal.GetPetAbilityListTable

```lua
C_PetJournal.GetPetAbilityListTable(speciesID: number) -> info: table<PetAbilityLevelInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PetJournal.GetPetInfoTableByPetID

```lua
C_PetJournal.GetPetInfoTableByPetID(petID: WOWGUID) -> info: PetJournalPetInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PetJournal.GetPetInfoTableBySpeciesID

```lua
C_PetJournal.GetPetInfoTableBySpeciesID(speciesID: number) -> petInfo: PetJournalPetInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PetJournal.GetPetLoadOutInfo

```lua
C_PetJournal.GetPetLoadOutInfo(slot: luaIndex) -> petID: WOWGUID?, ability1ID: number, ability2ID: number, ability3ID: number, locked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PetJournal.GetPetSummonInfo

```lua
C_PetJournal.GetPetSummonInfo(battlePetGUID: WOWGUID) -> isSummonable: bool, error: PetJournalError, errorText: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetJournal.GetSearchFilter

```lua
C_PetJournal.GetSearchFilter() -> filterText: cstring
```

### C_PetJournal.HasFavoritePets

```lua
C_PetJournal.HasFavoritePets() -> hasFavorites: bool
```

### C_PetJournal.IsCurrentlySummoned

```lua
C_PetJournal.IsCurrentlySummoned(petID: WOWGUID) -> isSummoned: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetJournal.IsUsingDefaultFilters

```lua
C_PetJournal.IsUsingDefaultFilters() -> isUsingDefaultFilters: bool
```

### C_PetJournal.PetIsSummonable

```lua
C_PetJournal.PetIsSummonable(battlePetGUID: WOWGUID) -> isSummonable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetJournal.PetUsesRandomDisplay

```lua
C_PetJournal.PetUsesRandomDisplay(speciesID: number) -> usesRandomDisplay: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetJournal.SetDefaultFilters

```lua
C_PetJournal.SetDefaultFilters()
```

### C_PetJournal.SetHoveredBattlePet

```lua
C_PetJournal.SetHoveredBattlePet(battlePetGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetJournal.SetSearchFilter

```lua
C_PetJournal.SetSearchFilter(filterText: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetJournal.SpellTargetBattlePet

```lua
C_PetJournal.SpellTargetBattlePet(battlePetGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### BATTLEPET_FORCE_NAME_DECLENSION

Payload: `name: cstring, battlePetGUID: WOWGUID`  
Flags: SynchronousEvent  

### COMPANION_LEARNED

Payload: `none`  
Flags: SynchronousEvent  

### COMPANION_UNLEARNED

Payload: `none`  
Flags: SynchronousEvent  

### COMPANION_UPDATE

Payload: `companionType: cstring?`  
Flags: SynchronousEvent  

### NEW_PET_ADDED

Payload: `battlePetGUID: WOWGUID`  
Flags: SynchronousEvent  

### PET_JOURNAL_AUTO_SLOTTED_PET

Payload: `slotIndex: number, battlePetGUID: WOWGUID`  
Flags: SynchronousEvent  

### PET_JOURNAL_CAGE_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### PET_JOURNAL_LIST_UPDATE

Payload: `none`  
Flags: SynchronousEvent, UniqueEvent  

### PET_JOURNAL_NEW_BATTLE_SLOT

Payload: `none`  
Flags: SynchronousEvent  

### PET_JOURNAL_PET_DELETED

Payload: `battlePetGUID: WOWGUID`  
Flags: SynchronousEvent  

### PET_JOURNAL_PET_RESTORED

Payload: `battlePetGUID: WOWGUID`  
Flags: SynchronousEvent  

### PET_JOURNAL_PET_REVOKED

Payload: `battlePetGUID: WOWGUID`  
Flags: SynchronousEvent  

### PET_JOURNAL_PETS_HEALED

Payload: `none`  
Flags: SynchronousEvent  

### PET_JOURNAL_TRAP_LEVEL_SET

Payload: `trapLevel: number`  
Flags: SynchronousEvent  

### UPDATE_SUMMONPETS_ACTION

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### PetJournalError (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| PetIsDead | 1 |
| JournalIsLocked | 2 |
| InvalidFaction | 3 |
| NoFavoritesToSummon | 4 |
| NoValidRandomSummon | 5 |

### PetAbilityLevelInfo (Structure)

- `abilityID: number`
- `level: number`

### PetJournalPetInfo (Structure)

- `speciesID: number`
- `customName: cstring?`
- `petLevel: number?`
- `xp: number?`
- `maxXP: number?`
- `displayID: number?`
- `isFavorite: bool?`
- `icon: fileID`
- `petType: luaIndex`
- `creatureID: number`
- `name: cstring?`
- `sourceText: cstring`
- `description: cstring`
- `isWild: bool?`
- `canBattle: bool`
- `tradable: bool`
- `unique: bool`
- `obtainable: bool`
- `canAttachToDecor: bool`
- `creatureModelScale: number?`
