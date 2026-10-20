# Flyout

Type: System  
Namespace: `C_Flyout`  
Environment: All

## Functions

### C_Flyout.FlyoutHasSpell

```lua
C_Flyout.FlyoutHasSpell(flyoutID: number, spellID: number) -> hasSpell: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

### C_Flyout.GetFlyoutID

```lua
C_Flyout.GetFlyoutID(index: luaIndex) -> flyoutID: number
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

### C_Flyout.GetFlyoutInfo

```lua
C_Flyout.GetFlyoutInfo(flyoutID: number) -> info: FlyoutInfo
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

### C_Flyout.GetFlyoutSlotInfo

```lua
C_Flyout.GetFlyoutSlotInfo(flyoutID: number, slotIndex: luaIndex) -> slotInfo: FlyoutSlotInfo
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

### C_Flyout.GetFlyoutTexture

```lua
C_Flyout.GetFlyoutTexture(flyoutID: number) -> textureID: fileID
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

### C_Flyout.GetNumFlyouts

```lua
C_Flyout.GetNumFlyouts() -> numFlyouts: number
```

## Tables

### FlyoutInfo (Structure)

- `name: string`
- `description: string`
- `numSlots: number`
- `isKnown: bool`

### FlyoutSlotInfo (Structure)

- `spellID: number`
- `overrideSpellID: number`
- `isKnown: bool`
- `name: string?`
- `specID: number?`
