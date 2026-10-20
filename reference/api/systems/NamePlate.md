# NamePlate

Type: System  
Namespace: `C_NamePlate`  
Environment: All

## Functions

### C_NamePlate.GetNamePlateForUnit

```lua
C_NamePlate.GetNamePlateForUnit(unitToken: UnitTokenNamePlate, includeForbidden: bool = false) -> nameplate: NamePlateFrame
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_NamePlate.GetNamePlateSize

```lua
C_NamePlate.GetNamePlateSize() -> width: uiUnit, height: uiUnit
```

### C_NamePlate.GetNamePlates

```lua
C_NamePlate.GetNamePlates() -> nameplates: table<NamePlateFrame>
```

### C_NamePlate.SetNamePlateSize

```lua
C_NamePlate.SetNamePlateSize(width: uiUnit, height: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions
