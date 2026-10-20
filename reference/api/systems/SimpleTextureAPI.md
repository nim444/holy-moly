# SimpleTextureAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleTextureAPI:AddMaskTexture

```lua
SimpleTextureAPI:AddMaskTexture(mask: SimpleMaskTexture)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleTextureAPI:GetMaskTexture

```lua
SimpleTextureAPI:GetMaskTexture(index: luaIndex) -> mask: SimpleMaskTexture
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Hierarchy'], ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleTextureAPI:GetNumMaskTextures

```lua
SimpleTextureAPI:GetNumMaskTextures() -> count: size
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Hierarchy']  

### SimpleTextureAPI:RemoveMaskTexture

```lua
SimpleTextureAPI:RemoveMaskTexture(mask: SimpleMaskTexture)
```

Secret: SecretArguments=AllowedWhenUntainted
