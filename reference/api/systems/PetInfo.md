# PetInfo

Type: System  
Namespace: `C_PetInfo`  
Environment: All

## Functions

### C_PetInfo.CanPetEatItem

```lua
C_PetInfo.CanPetEatItem(itemID: number) -> canEat: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetInfo.GetPetFoodTypes

```lua
C_PetInfo.GetPetFoodTypes() -> foodTypes: table<string>
```

### C_PetInfo.GetPetHappiness

```lua
C_PetInfo.GetPetHappiness() -> happiness: number, damagePercentage: number, loyaltyRate: number
```

Flags: MayReturnNothing  

### C_PetInfo.GetPetLoyalty

```lua
C_PetInfo.GetPetLoyalty() -> loyaltyName: string
```

Flags: MayReturnNothing  

### C_PetInfo.GetPetTalentTree

```lua
C_PetInfo.GetPetTalentTree() -> talentTreeName: stringView
```

Flags: MayReturnNothing  

### C_PetInfo.GetPetTamersForMap

```lua
C_PetInfo.GetPetTamersForMap(uiMapID: number) -> petTamers: table<PetTamerMapInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetInfo.GetPetTrainingPoints

```lua
C_PetInfo.GetPetTrainingPoints() -> totalPoints: number, usedPoints: number
```

### C_PetInfo.GetPetUIModelSceneID

```lua
C_PetInfo.GetPetUIModelSceneID() -> modelSceneID: number
```

### C_PetInfo.GetSpellForPetAction

```lua
C_PetInfo.GetSpellForPetAction(actionID: number) -> spellID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetInfo.IsPetActionPassive

```lua
C_PetInfo.IsPetActionPassive(actionID: number) -> isPassive: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetInfo.PetAbandon

```lua
C_PetInfo.PetAbandon(petNumber: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PetInfo.PetAssistMode

```lua
C_PetInfo.PetAssistMode()
```

### C_PetInfo.PetRename

```lua
C_PetInfo.PetRename(name: cstring, petNumber: number?, declensions: table<cstring>?)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### PET_ATTACK_START

Payload: `none`  
Flags: SynchronousEvent  

### PET_ATTACK_STOP

Payload: `none`  
Flags: SynchronousEvent  

### PET_BAR_HIDEGRID

Payload: `none`  
Flags: SynchronousEvent  

### PET_BAR_SHOWGRID

Payload: `none`  
Flags: SynchronousEvent  

### PET_BAR_UPDATE_COOLDOWN

Payload: `none`  
Flags: SynchronousEvent  

### PET_DISMISS_START

Payload: `delay: number`  
Flags: SynchronousEvent  

### PET_FORCE_NAME_DECLENSION

Payload: `name: cstring, petNumber: number?, declinedName1: cstring?, declinedName2: cstring?, declinedName3: cstring?, declinedName4: cstring?, declinedName5: cstring?`  
Flags: SynchronousEvent  

### PET_UI_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### RAISED_AS_GHOUL

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_POSSESS_BAR

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_VEHICLE_ACTIONBAR

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### PetTamerMapInfo (Structure)

- `areaPoiID: number`
- `position: vector2`
- `name: cstring`
- `atlasName: string?`
- `textureIndex: number?`
