# GamepadUI

Type: System  
Namespace: `C_GamepadUI`  
Environment: All

## Functions

### C_GamepadUI.GetFirstGamepadActionBarStorageSlotIndexForActiveStance

```lua
C_GamepadUI.GetFirstGamepadActionBarStorageSlotIndexForActiveStance() -> activeStanceFirstGamepadStorageSlotIndex: luaIndex?
```

### C_GamepadUI.GetFirstGamepadActionStorageSlotIndex

```lua
C_GamepadUI.GetFirstGamepadActionStorageSlotIndex() -> firstGamepadActionStorageSlotIndex: luaIndex
```

### C_GamepadUI.GetFirstGamepadPetActionStorageSlotIndex

```lua
C_GamepadUI.GetFirstGamepadPetActionStorageSlotIndex() -> firstGamepadPetActionStorageSlotID: luaIndex
```

### C_GamepadUI.IsValidGamepadActionStorageSlotIndex

```lua
C_GamepadUI.IsValidGamepadActionStorageSlotIndex(gamepadActionStorageSlotIndex: luaIndex) -> isValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GamepadUI.IsValidGamepadPossessBarStorageSlotIndex

```lua
C_GamepadUI.IsValidGamepadPossessBarStorageSlotIndex(gamepadPossessBarStorageSlotIndex: luaIndex) -> isValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### GAMEPAD_POSSESS_BAR_OVERRIDE_CHANGED

Payload: `oldOverride: GamepadPossessBarOverride, newOverride: GamepadPossessBarOverride`  
Flags: UniqueEvent  

### GAMEPAD_STANCE_BAR_OVERRIDE_CHANGED

Payload: `oldOverride: GamepadStanceBarOverride, newOverride: GamepadStanceBarOverride`  
Flags: UniqueEvent  

## Tables

### GamepadPossessBarOverride (Enumeration)

| Name | Value |
|---|---|
| SpecialPageTopBar | 1 |
| Page1LeftBar | 2 |
| Page1RightBar | 3 |
| Page1BottomBar | 4 |
| Page2TopBar | 5 |
| Page2LeftBar | 6 |
| Page2RightBar | 7 |
| Page2BottomBar | 8 |
| Page3TopBar | 9 |
| Page3LeftBar | 10 |
| Page3RightBar | 11 |
| Page3BottomBar | 12 |

### GamepadStanceBarOverride (Enumeration)

| Name | Value |
|---|---|
| None | 1 |
| Page1LeftBar | 2 |
| Page1RightBar | 3 |
| Page1BottomBar | 4 |
| Page2TopBar | 5 |
| Page2LeftBar | 6 |
| Page2RightBar | 7 |
| Page2BottomBar | 8 |
| Page3TopBar | 9 |
| Page3LeftBar | 10 |
| Page3RightBar | 11 |
| Page3BottomBar | 12 |

### GamepadActionBarConstants (Constants)

| Name | Type | Value |
|---|---|---|
| NUM_SLOTS_PER_GAMEPAD_ACTION_BAR_GROUP | number | 4 |
| NUM_GROUPS_PER_GAMEPAD_ACTION_BAR | number | 2 |
| NUM_SLOTS_PER_GAMEPAD_ACTION_BAR | number | Constants.GamepadActionBarConstants.NUM_SLOTS_PER_GAMEPAD_ACTION_BAR_GROUP * Constants.GamepadActionBarConstants.NUM_GROUPS_PER_GAMEPAD_ACTION_BAR |
| NUM_PAGEABLE_BARS_IN_GAMEPAD_ACTION_BAR_PAGE_UNIT | number | 4 |
| NUM_PAGEABLE_SLOTS_PER_GAMEPAD_ACTION_BAR_PAGE_UNIT_STANDARD_PAGE | number | Constants.GamepadActionBarConstants.NUM_PAGEABLE_BARS_IN_GAMEPAD_ACTION_BAR_PAGE_UNIT * Constants.GamepadActionBarConstants.NUM_SLOTS_PER_GAMEPAD_ACTION_BAR |
| NUM_RESERVED_SLOTS_PER_GAMEPAD_ACTION_BAR_PAGE_UNIT | number | 4 |
| NUM_PAGES_PER_GAMEPAD_ACTION_BAR_PAGE_UNIT | number | 4 |
| NUM_STANDARD_PAGES_PER_GAMEPAD_ACTION_BAR_PAGE_UNIT | number | 3 |
| GAMEPAD_ACTION_BAR_PAGE_UNIT_SPECIAL_PAGE_INDEX | number | 4 |
| NUM_PAGEABLE_SLOTS_PER_GAMEPAD_ACTION_BAR_PAGE_UNIT | number | Constants.GamepadActionBarConstants.NUM_PAGEABLE_SLOTS_PER_GAMEPAD_ACTION_BAR_PAGE_UNIT_STANDARD_PAGE * Constants.GamepadActionBarConstants.NUM_STANDARD_PAGES_PER_GAMEPAD_ACTION_BAR_PAGE_UNIT |
| NUM_GAMEPAD_STANCE_ACTION_BARS | number | 5 |
