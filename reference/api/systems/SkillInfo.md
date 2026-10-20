# SkillInfo

Type: System  
Namespace: `C_SkillInfo`  
Environment: All

## Functions

### C_SkillInfo.AbandonSkill

```lua
C_SkillInfo.AbandonSkill(skillLineID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SkillInfo.CollapseSkillHeader

```lua
C_SkillInfo.CollapseSkillHeader(index: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SkillInfo.ExpandSkillHeader

```lua
C_SkillInfo.ExpandSkillHeader(index: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SkillInfo.GetNumSkillLines

```lua
C_SkillInfo.GetNumSkillLines() -> numSkillLines: number
```

### C_SkillInfo.GetSelectedSkill

```lua
C_SkillInfo.GetSelectedSkill() -> index: luaIndex
```

### C_SkillInfo.GetSkillLineInfo

```lua
C_SkillInfo.GetSkillLineInfo(index: luaIndex) -> skillLineAttributes: SkillLineAttributes?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SkillInfo.GetSkillLineInfoByID

```lua
C_SkillInfo.GetSkillLineInfoByID(ID: number) -> skillLineAttributes: SkillLineAttributes?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SkillInfo.SetSelectedSkill

```lua
C_SkillInfo.SetSelectedSkill(index: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### SKILL_LINES_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### SkillLineAttributes (Structure)

- `skillID: number`
- `name: cstring`
- `isHeader: bool`
- `isCollapsed: bool`
- `rank: number`
- `tempPoints: number`
- `modifier: number`
- `maxRank: number`
- `isAbandonable: bool`
- `stepCost: number`
- `rankCost: number`
- `minLevel: number`
- `costType: number`
- `parentSkillLineID: number`
- `skillLineCategoryID: number`
- `description: cstring`
