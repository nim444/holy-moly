# UIFileAssetAPI

Type: System  
Namespace: `C_UIFileAsset`  
Environment: All

## Functions

### C_UIFileAsset.GetFileID

```lua
C_UIFileAsset.GetFileID(asset: FileAsset) -> assetFileID: fileID?
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the numeric file ID associated with a file asset.

### C_UIFileAsset.IsKnownFile

```lua
C_UIFileAsset.IsKnownFile(asset: FileAsset) -> isValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Determines whether a file asset is known to the client, either as a shipped asset or a locally existing loose file.

### C_UIFileAsset.IsLooseFile

```lua
C_UIFileAsset.IsLooseFile(asset: FileAsset) -> isLooseFile: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Determines whether a file asset refers to a known loose (local) file.
