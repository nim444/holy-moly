# CooldownViewer

Type: System  
Namespace: `C_CooldownViewer`  
Environment: All

## Functions

### C_CooldownViewer.GetCooldownViewerCategorySet

```lua
C_CooldownViewer.GetCooldownViewerCategorySet(category: CooldownViewerCategory, allowUnlearned: bool = false) -> cooldownIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CooldownViewer.GetCooldownViewerCooldownInfo

```lua
C_CooldownViewer.GetCooldownViewerCooldownInfo(cooldownID: number) -> cooldownInfo: CooldownViewerCooldown
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_CooldownViewer.GetGroupBuffItems

```lua
C_CooldownViewer.GetGroupBuffItems() -> groupBuffItems: table<GroupBuffItem>
```

### C_CooldownViewer.GetLayoutData

```lua
C_CooldownViewer.GetLayoutData() -> data: cstring
```

### C_CooldownViewer.GetValidAlertTypes

```lua
C_CooldownViewer.GetValidAlertTypes(cooldownID: number) -> validAlertTypes: table<CooldownViewerAlertEventType>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CooldownViewer.IsCooldownViewerAvailable

```lua
C_CooldownViewer.IsCooldownViewerAvailable() -> isAvailable: bool, failureReason: string
```

### C_CooldownViewer.SetLayoutData

```lua
C_CooldownViewer.SetLayoutData(data: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### COOLDOWN_VIEWER_DATA_LOADED

Payload: `none`  
Flags: SynchronousEvent  

### COOLDOWN_VIEWER_SPELL_OVERRIDE_UPDATED

Payload: `baseSpellID: number, overrideSpellID: number?`  
Flags: SynchronousEvent  

### COOLDOWN_VIEWER_TABLE_HOTFIXED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### CooldownViewerCooldown (Structure)

- `cooldownID: number`
- `spellID: number?`
- `spellCategoryID: number?`
- `overrideSpellID: number?`
- `overrideTooltipSpellID: number?`
- `equipSlot: luaIndex?`
- `buffSlot: luaIndex?`
- `linkedSpellIDs: table<number>`
- `selfAura: bool`
- `hasAura: bool`
- `charges: bool`
- `isKnown: bool`
- `isInvisible: bool`
- `flags: CooldownSetSpellFlags`
- `category: CooldownViewerCategory`

### GroupBuffItem (Structure)

- `spellID: number` The persisted key for this item, shared by every rank of the spell.
- `displaySpellID: number` The spell used for name, icon and tooltip: the highest known rank, or the lowest rank if none are known.
- `name: cstring`
- `iconID: fileID`
- `flags: GroupBuffItemFlags`
- `isKnown: bool`
