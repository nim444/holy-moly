# ToyBoxInfo

Type: System  
Namespace: `C_ToyBoxInfo`  
Environment: All

## Functions

### C_ToyBoxInfo.ClearFanfare

```lua
C_ToyBoxInfo.ClearFanfare(itemID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ToyBoxInfo.HasAnyToy

```lua
C_ToyBoxInfo.HasAnyToy() -> hasToy: bool
```

### C_ToyBoxInfo.IsToySourceValid

```lua
C_ToyBoxInfo.IsToySourceValid(source: luaIndex) -> isToySourceValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ToyBoxInfo.IsUsingDefaultFilters

```lua
C_ToyBoxInfo.IsUsingDefaultFilters() -> isUsingDefaultFilters: bool
```

### C_ToyBoxInfo.NeedsFanfare

```lua
C_ToyBoxInfo.NeedsFanfare(itemID: number) -> needsFanfare: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ToyBoxInfo.SetDefaultFilters

```lua
C_ToyBoxInfo.SetDefaultFilters()
```

## Events

### NEW_TOY_ADDED

Payload: `itemID: number`  
Flags: SynchronousEvent  

### TOYS_UPDATED

Payload: `itemID: number?, isNew: bool?, hasFanfare: bool?`  
Flags: SynchronousEvent, UniqueEvent
