# ClickBindings

Type: System  
Namespace: `C_ClickBindings`  
Environment: All

## Functions

### C_ClickBindings.CanSpellBeClickBound

```lua
C_ClickBindings.CanSpellBeClickBound(spellID: SpellIdentifier) -> canBeBound: bool
```

Secret: SecretArguments=AllowedWhenTainted  

### C_ClickBindings.ExecuteBinding

```lua
C_ClickBindings.ExecuteBinding(targetToken: cstring, button: cstring, modifiers: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_ClickBindings.GetBindingType

```lua
C_ClickBindings.GetBindingType(button: cstring, modifiers: number) -> type: ClickBindingType
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClickBindings.GetEffectiveInteractionButton

```lua
C_ClickBindings.GetEffectiveInteractionButton(button: cstring, modifiers: number) -> effectiveButton: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClickBindings.GetProfileInfo

```lua
C_ClickBindings.GetProfileInfo() -> infoVec: table<ClickBindingInfo>
```

### C_ClickBindings.GetTutorialShown

```lua
C_ClickBindings.GetTutorialShown() -> tutorialShown: bool
```

### C_ClickBindings.ResetCurrentProfile

```lua
C_ClickBindings.ResetCurrentProfile()
```

Flags: HasRestrictions  

### C_ClickBindings.SetProfileByInfo

```lua
C_ClickBindings.SetProfileByInfo(infoVec: table<ClickBindingInfo>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_ClickBindings.SetTutorialShown

```lua
C_ClickBindings.SetTutorialShown()
```

## Events

### CLICKBINDINGS_SET_HIGHLIGHTS_SHOWN

Payload: `showHighlights: bool`  
Flags: SynchronousEvent
