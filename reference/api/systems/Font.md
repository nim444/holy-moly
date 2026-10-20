# Font

Type: System  
Environment: All

## Functions

### CreateFontFamily

```lua
CreateFontFamily(name: cstring, members: table<CreateFontFamilyMemberInfo>) -> fontFamily: SimpleFont
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetFontInfo

```lua
GetFontInfo(fontObject: SimpleFont) -> info: FontScriptInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetFonts

```lua
GetFonts() -> fontNames: table<cstring>
```

## Tables

### CreateFontFamilyMemberInfo (Structure)

- `alphabet: FontAlphabet`
- `file: cstring`
- `height: uiFontHeight`
- `flags: TBFFlags`

### FontScriptInfo (Structure)

- `color: colorRGBA`
- `height: number`
- `outline: string`
- `shadow: FontScriptShadowInfo?`
- `fontObject: SimpleFont`
- `canBeUserScaled: bool`

### FontScriptShadowInfo (Structure)

- `color: colorRGBA`
- `x: number`
- `y: number`
