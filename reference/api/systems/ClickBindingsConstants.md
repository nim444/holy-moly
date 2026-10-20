# ClickBindingsConstants

Type: None

## Tables

### ClickBindingInteraction (Enumeration)

| Name | Value |
|---|---|
| Target | 1 |
| OpenContextMenu | 2 |

### ClickBindingType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Spell | 1 |
| Macro | 2 |
| Interaction | 3 |
| PetAction | 4 |

### ClickBindingInfo (Structure)

- `type: ClickBindingType`
- `actionID: number` Base spellID for spell, macro index for macro, ClickBindingInteraction for interaction, spellID for PetAction
- `button: cstring`
- `modifiers: number`
