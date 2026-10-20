# PetBattles

Type: System  
Namespace: `C_PetBattles`  
Environment: All

## Functions

### C_PetBattles.GetBreedQuality

```lua
C_PetBattles.GetBreedQuality(petOwner: BattlePetOwner, slot: number) -> quality: BattlePetBreedQuality
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetBattles.GetIcon

```lua
C_PetBattles.GetIcon(petOwner: BattlePetOwner, slot: number) -> iconFileID: fileID
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PetBattles.GetName

```lua
C_PetBattles.GetName(petOwner: BattlePetOwner, slot: number) -> customName: string, speciesName: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PetBattles.IsPlayerNPC

```lua
C_PetBattles.IsPlayerNPC() -> isPlayerNPC: bool
```

### C_PetBattles.IsWildBattle

```lua
C_PetBattles.IsWildBattle() -> isWildBattle: bool
```
