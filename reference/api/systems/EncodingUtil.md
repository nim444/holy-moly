# EncodingUtil

Type: System  
Namespace: `C_EncodingUtil`  
Environment: All

## Functions

### C_EncodingUtil.CompressString

```lua
C_EncodingUtil.CompressString(source: stringView, method: CompressionMethod = Deflate, level: CompressionLevel = Default) -> output: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EncodingUtil.DecodeBase64

```lua
C_EncodingUtil.DecodeBase64(source: stringView, variant: Base64Variant = Standard) -> output: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EncodingUtil.DecodeHex

```lua
C_EncodingUtil.DecodeHex(source: string) -> output: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EncodingUtil.DecompressString

```lua
C_EncodingUtil.DecompressString(source: stringView, method: CompressionMethod = Deflate) -> output: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EncodingUtil.DeserializeCBOR

```lua
C_EncodingUtil.DeserializeCBOR(source: stringView) -> value: LuaValueVariant?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncodingUtil.DeserializeJSON

```lua
C_EncodingUtil.DeserializeJSON(source: string) -> value: LuaValueVariant?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncodingUtil.EncodeBase64

```lua
C_EncodingUtil.EncodeBase64(source: stringView, variant: Base64Variant = Standard) -> output: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EncodingUtil.EncodeHex

```lua
C_EncodingUtil.EncodeHex(source: stringView) -> output: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EncodingUtil.SerializeCBOR

```lua
C_EncodingUtil.SerializeCBOR(value: LuaValueVariant?, options: CBORSerializationOptions?) -> output: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncodingUtil.SerializeJSON

```lua
C_EncodingUtil.SerializeJSON(value: LuaValueVariant?, options: JSONSerializationOptions?) -> output: string
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### Base64Variant (Enumeration)

| Name | Value |
|---|---|
| Standard | 0 |
| StandardUrlSafe | 1 |

### CompressionLevel (Enumeration)

| Name | Value |
|---|---|
| Default | 0 |
| OptimizeForSpeed | 1 |
| OptimizeForSize | 2 |

### CompressionMethod (Enumeration)

| Name | Value |
|---|---|
| Deflate | 0 |
| Zlib | 1 |
| Gzip | 2 |

### CBORSerializationOptions (Structure)

- `ignoreSerializationErrors: bool = false` If true, attempt to ignore errors from unsupported values and instead replace them where applicable with 'undefined' CBOR items.

### JSONSerializationOptions (Structure)

- `ignoreSerializationErrors: bool = false` If true, attempt to ignore errors from unsupported values and instead replace them where applicable with 'null' JSON values.
