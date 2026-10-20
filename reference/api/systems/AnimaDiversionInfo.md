# AnimaDiversionInfo

Type: System  
Namespace: `C_AnimaDiversion`  
Environment: All

## Functions

### C_AnimaDiversion.CloseUI

```lua
C_AnimaDiversion.CloseUI()
```

### C_AnimaDiversion.GetAnimaDiversionNodes

```lua
C_AnimaDiversion.GetAnimaDiversionNodes() -> animaNodes: table<AnimaDiversionNodeInfo>
```

Flags: MayReturnNothing  

### C_AnimaDiversion.GetOriginPosition

```lua
C_AnimaDiversion.GetOriginPosition() -> normalizedPosition: vector2?
```

### C_AnimaDiversion.GetReinforceProgress

```lua
C_AnimaDiversion.GetReinforceProgress() -> progress: number
```

### C_AnimaDiversion.GetTextureKit

```lua
C_AnimaDiversion.GetTextureKit() -> textureKit: textureKit
```

### C_AnimaDiversion.OpenAnimaDiversionUI

```lua
C_AnimaDiversion.OpenAnimaDiversionUI()
```

### C_AnimaDiversion.SelectAnimaNode

```lua
C_AnimaDiversion.SelectAnimaNode(talentID: number, temporary: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

## Events

### ANIMA_DIVERSION_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### ANIMA_DIVERSION_OPEN

Payload: `info: AnimaDiversionFrameInfo`  
Flags: SynchronousEvent  

### ANIMA_DIVERSION_TALENT_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### AnimaDiversionNodeState (Enumeration)

| Name | Value |
|---|---|
| Unavailable | 0 |
| Available | 1 |
| SelectedTemporary | 2 |
| SelectedPermanent | 3 |
| Cooldown | 4 |

### AnimaDiversionCostInfo (Structure)

- `currencyID: number`
- `quantity: number`

### AnimaDiversionFrameInfo (Structure)

- `textureKit: textureKit`
- `title: string`
- `mapID: number`

### AnimaDiversionNodeInfo (Structure)

- `talentID: number`
- `name: string`
- `description: string`
- `costs: table<AnimaDiversionCostInfo>`
- `currencyID: number`
- `icon: number`
- `normalizedPosition: vector2`
- `state: AnimaDiversionNodeState`
