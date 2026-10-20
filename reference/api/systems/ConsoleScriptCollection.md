# ConsoleScriptCollection

Type: System  
Namespace: `C_ConsoleScriptCollection`  
Environment: All

## Functions

### C_ConsoleScriptCollection.GetCollectionDataByID

```lua
C_ConsoleScriptCollection.GetCollectionDataByID(collectionID: number) -> data: ConsoleScriptCollectionData?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ConsoleScriptCollection.GetCollectionDataByTag

```lua
C_ConsoleScriptCollection.GetCollectionDataByTag(collectionTag: string) -> data: ConsoleScriptCollectionData?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ConsoleScriptCollection.GetElements

```lua
C_ConsoleScriptCollection.GetElements(collectionID: number) -> elementIDs: table<ConsoleScriptCollectionElementData>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ConsoleScriptCollection.GetScriptData

```lua
C_ConsoleScriptCollection.GetScriptData(consoleScriptID: number) -> data: ConsoleScriptData
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### ConsoleScriptCollectionData (Structure)

- `ID: number`
- `name: cstring`

### ConsoleScriptCollectionElementData (Structure)

- `collectionID: number?`
- `consoleScriptID: number?`

### ConsoleScriptData (Structure)

- `ID: number`
- `name: cstring`
- `help: cstring`
- `script: cstring`
- `params: cstring`
- `isLuaScript: bool`

### ConsoleScriptParameter (Structure)

- `name: string`
- `description: string`
