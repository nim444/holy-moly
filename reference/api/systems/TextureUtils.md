# TextureUtils

Type: System  
Namespace: `C_Texture`  
Environment: All

## Functions

### C_Texture.ClearTitleIconTexture

```lua
C_Texture.ClearTitleIconTexture(texture: SimpleTexture)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Texture.GetAtlasElementID

```lua
C_Texture.GetAtlasElementID(atlas: textureAtlas) -> elementID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Texture.GetAtlasElements

```lua
C_Texture.GetAtlasElements() -> atlases: table<textureAtlas>
```

### C_Texture.GetAtlasExists

```lua
C_Texture.GetAtlasExists(atlas: textureAtlas) -> atlasExists: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Texture.GetAtlasID

```lua
C_Texture.GetAtlasID(atlas: textureAtlas) -> atlasID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Texture.GetAtlasInfo

```lua
C_Texture.GetAtlasInfo(atlas: textureAtlas) -> info: AtlasInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Texture.GetFilenameFromFileDataID

```lua
C_Texture.GetFilenameFromFileDataID(fileDataID: number) -> filename: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Texture.GetTitleIconTexture

```lua
C_Texture.GetTitleIconTexture(titleID: string, version: TitleIconVersion, callback: GetTitleIconTextureCallback)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Texture.IsTitleIconTextureReady

```lua
C_Texture.IsTitleIconTextureReady(titleID: string, version: TitleIconVersion) -> ready: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Texture.SetTitleIconTexture

```lua
C_Texture.SetTitleIconTexture(texture: SimpleTexture, titleID: string, version: TitleIconVersion)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Texture.SetURLTexture

```lua
C_Texture.SetURLTexture(texture: SimpleTexture, url: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

## Events

### URL_TEXTURE_REQUEST_RESULT

Payload: `texture: SimpleTexture, result: UrlTextureResult`  
Flags: SynchronousEvent  

## Tables

### TitleIconVersion (Enumeration)

| Name | Value |
|---|---|
| Small | 0 |
| Medium | 1 |
| Large | 2 |

### UrlTextureResult (Enumeration)

| Name | Value |
|---|---|
| Found | 1 |
| NotFound | 2 |
| Requested | 3 |
| NotAllowed | 4 |

### AtlasInfo (Structure)

- `elementName: cstring`
- `width: number`
- `height: number`
- `rawSize: vector2`
- `leftTexCoord: number`
- `rightTexCoord: number`
- `topTexCoord: number`
- `bottomTexCoord: number`
- `tilesHorizontally: bool`
- `tilesVertically: bool`
- `file: fileID?`
- `filename: string?`
- `sliceData: UITextureSliceData?`

### GetTitleIconTextureCallback (CallbackType)

- `success: bool`
- `texture: fileID`
