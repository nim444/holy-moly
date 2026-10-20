# ChromieTimeInfo

Type: System  
Namespace: `C_ChromieTime`  
Environment: All

## Functions

### C_ChromieTime.CloseUI

```lua
C_ChromieTime.CloseUI()
```

### C_ChromieTime.GetChromieTimeExpansionOption

```lua
C_ChromieTime.GetChromieTimeExpansionOption(expansionRecID: number) -> info: ChromieTimeExpansionInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChromieTime.GetChromieTimeExpansionOptions

```lua
C_ChromieTime.GetChromieTimeExpansionOptions() -> expansionOptions: table<ChromieTimeExpansionInfo>
```

### C_ChromieTime.SelectChromieTimeOption

```lua
C_ChromieTime.SelectChromieTimeOption(chromieTimeExpansionInfoId: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### ChromieTimeExpansionInfo (Structure)

- `id: number`
- `name: cstring`
- `description: cstring`
- `mapAtlas: textureAtlas`
- `previewAtlas: textureAtlas`
- `completed: bool`
- `alreadyOn: bool`
- `recommended: bool`
- `sortPriority: number`
