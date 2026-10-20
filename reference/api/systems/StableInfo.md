# StableInfo

Type: System  
Namespace: `C_StableInfo`  
Environment: All

## Functions

### C_StableInfo.BuyStableSlot

```lua
C_StableInfo.BuyStableSlot()
```

### C_StableInfo.ClosePetStables

```lua
C_StableInfo.ClosePetStables()
```

### C_StableInfo.GetActivePetList

```lua
C_StableInfo.GetActivePetList() -> activePets: table<PetInfo>
```

### C_StableInfo.GetAvailablePetSpecInfos

```lua
C_StableInfo.GetAvailablePetSpecInfos() -> petSpecInfos: table<PetSpecInfo>
```

### C_StableInfo.GetNextStableSlotCost

```lua
C_StableInfo.GetNextStableSlotCost() -> cost: number
```

### C_StableInfo.GetNumActivePets

```lua
C_StableInfo.GetNumActivePets() -> numActivePets: number
```

### C_StableInfo.GetNumStablePets

```lua
C_StableInfo.GetNumStablePets() -> numStablePets: number
```

### C_StableInfo.GetNumStableSlots

```lua
C_StableInfo.GetNumStableSlots() -> numSlots: number
```

### C_StableInfo.GetStablePetFoodTypes

```lua
C_StableInfo.GetStablePetFoodTypes(index: luaIndex) -> foodTypes: table<string>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_StableInfo.GetStablePetInfo

```lua
C_StableInfo.GetStablePetInfo(index: luaIndex) -> petInfo: PetInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_StableInfo.GetStabledPetList

```lua
C_StableInfo.GetStabledPetList() -> stabledPets: table<PetInfo>
```

### C_StableInfo.IsAtStableMaster

```lua
C_StableInfo.IsAtStableMaster() -> isAtStableMaster: bool
```

### C_StableInfo.IsBonusPetSlotAvailable

```lua
C_StableInfo.IsBonusPetSlotAvailable() -> isAvailable: bool
```

### C_StableInfo.IsPetFavorite

```lua
C_StableInfo.IsPetFavorite(slot: luaIndex) -> isFavorite: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_StableInfo.PickupStablePet

```lua
C_StableInfo.PickupStablePet(index: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_StableInfo.SetPetFavorite

```lua
C_StableInfo.SetPetFavorite(slot: luaIndex, isFavorite: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_StableInfo.SetPetSlot

```lua
C_StableInfo.SetPetSlot(index: luaIndex, slot: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### PET_INFO_UPDATE

Payload: `none`  
Flags: UniqueEvent  

### PET_STABLE_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### PET_STABLE_FAVORITES_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### PET_STABLE_SHOW

Payload: `none`  
Flags: SynchronousEvent  

### PET_STABLE_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### PetInfo (Structure)

- `slotID: number`
- `icon: fileID`
- `name: string`
- `level: number`
- `familyName: string`
- `specialization: string`
- `type: string`
- `petAbilities: table<number>`
- `specAbilities: table<number>`
- `displayID: number`
- `isFavorite: bool`
- `isExotic: bool`
- `uiModelSceneID: number = 718`
- `petNumber: number`
- `creatureID: number`
- `specID: number`
- `loyaltyLevel: number`
- `loyaltyName: string`
- `happinessLevel: number`
- `experience: number`
- `experienceNeeded: number`

### PetSpecInfo (Structure)

- `specID: number`
- `specIndex: luaIndex`
- `specializationName: string`
