# SpellActivationOverlay

Type: System  
Namespace: `C_SpellActivationOverlay`  
Environment: All

## Functions

### C_SpellActivationOverlay.IsSpellOverlayed

```lua
C_SpellActivationOverlay.IsSpellOverlayed(spellID: number) -> isSpellOverlayed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### SPELL_ACTIVATION_OVERLAY_GLOW_HIDE

Payload: `spellID: number`  
Flags: SynchronousEvent  

### SPELL_ACTIVATION_OVERLAY_GLOW_SHOW

Payload: `spellID: number`  
Flags: SynchronousEvent  

### SPELL_ACTIVATION_OVERLAY_HIDE

Payload: `spellID: number?`  
Flags: SynchronousEvent  

### SPELL_ACTIVATION_OVERLAY_SHOW

Payload: `spellID: number, overlayFileDataID: number, locationType: ScreenLocationType, scale: number, r: number, g: number, b: number`  
Flags: SynchronousEvent
