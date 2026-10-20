# XMLUtil

Type: System  
Namespace: `C_XMLUtil`  
Environment: All

## Functions

### C_XMLUtil.GetTemplateInfo

```lua
C_XMLUtil.GetTemplateInfo(name: cstring) -> info: XMLTemplateInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_XMLUtil.GetTemplates

```lua
C_XMLUtil.GetTemplates() -> templates: table<XMLTemplateListInfo>
```

## Tables

### XMLTemplateInfo (Structure)

- `type: cstring`
- `width: number`
- `height: number`
- `keyValues: table<XMLTemplateKeyValue>`
- `inherits: cstring?`
- `sourceLocation: string`

### XMLTemplateKeyValue (Structure)

- `key: cstring`
- `keyType: cstring`
- `type: cstring`
- `value: cstring`

### XMLTemplateListInfo (Structure)

- `name: cstring`
- `type: cstring`
