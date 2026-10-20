# ZoneAbility

Type: System  
Namespace: `C_ZoneAbility`  
Environment: All

## Functions

### C_ZoneAbility.GetActiveAbilities

```lua
C_ZoneAbility.GetActiveAbilities() -> zoneAbilities: table<ZoneAbilityInfo>
```

### C_ZoneAbility.GetZoneAbilityIcon

```lua
C_ZoneAbility.GetZoneAbilityIcon(zoneAbilitySpellID: number) -> zoneAbilityIconID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### ZoneAbilityInfo (Structure)

- `zoneAbilityID: number`
- `uiPriority: number`
- `spellID: number`
- `textureKit: textureKit`
- `tutorialText: cstring?`
