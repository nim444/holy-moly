# TransmogOutfitConstants

Type: None

## Tables

### TransmogOutfitCostModifiersApplied (Enumeration)

| Name | Value |
|---|---|
| DebugOnlyFreeDiscountApplied | 1 |
| VoidRacialDiscountApplied | 2 |
| OutfitCostModifierApplied | 4 |
| AuraDiscountApplied | 8 |

### TransmogOutfitDataFlags (Enumeration)

| Name | Value |
|---|---|
| IsCachedLocally | 1 |

### TransmogOutfitDisplayType (Enumeration)

| Name | Value |
|---|---|
| Unassigned | 0 |
| Assigned | 1 |
| Equipped | 2 |
| Hidden | 3 |
| Disabled | 4 |

### TransmogOutfitEntryFlags (Enumeration)

| Name | Value |
|---|---|
| AutomaticallyAwardedOnLogin | 1 |
| UseOverrideName | 2 |
| OnlyAvailableDuringEvent | 4 |
| SortedToTopOfList | 8 |
| UseOverrideCostModifier | 16 |
| IsDefaultEquipped | 32 |

### TransmogOutfitEntrySource (Enumeration)

| Name | Value |
|---|---|
| StampedSource | 0 |
| AutomaticallyAwarded | 1 |
| PlayerPurchased | 2 |

### TransmogOutfitEquipAction (Enumeration)

| Name | Value |
|---|---|
| Equip | 0 |
| EquipAndLock | 1 |
| Remove | 2 |
| RemoveAndLock | 3 |
| Unlock | 4 |
| Lock | 5 |

### TransmogOutfitSetType (Enumeration)

| Name | Value |
|---|---|
| Equipped | 0 |
| Outfit | 1 |
| CustomSet | 2 |

### TransmogOutfitSlot (Enumeration)

| Name | Value |
|---|---|
| Head | 0 |
| ShoulderRight | 1 |
| ShoulderLeft | 2 |
| Back | 3 |
| Chest | 4 |
| Tabard | 5 |
| Body | 6 |
| Wrist | 7 |
| Hand | 8 |
| Waist | 9 |
| Legs | 10 |
| Feet | 11 |
| WeaponMainHand | 12 |
| WeaponOffHand | 13 |
| WeaponRanged | 14 |

### TransmogOutfitSlotError (Enumeration)

| Name | Value |
|---|---|
| Ok | 0 |
| NoItem | 1 |
| NotSoulbound | 2 |
| Legendary | 3 |
| InvalidItemType | 4 |
| InvalidDestination | 5 |
| Mismatch | 6 |
| SameItem | 7 |
| InvalidSource | 8 |
| InvalidSourceQuality | 9 |
| CannotUseItem | 10 |
| InvalidSlotForRace | 11 |
| NoIllusion | 12 |
| InvalidSlotForForm | 13 |
| IncompatibleWithMainHand | 14 |

### TransmogOutfitSlotFlags (Enumeration)

| Name | Value |
|---|---|
| CannotBeHidden | 1 |
| CanHaveIllusions | 2 |
| IsSecondarySlot | 4 |

### TransmogOutfitSlotOption (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| OneHandedWeapon | 1 |
| TwoHandedWeapon | 2 |
| RangedWeapon | 3 |
| OffHand | 4 |
| Shield | 5 |
| DeprecatedReuseMe | 6 |
| FuryTwoHandedWeapon | 7 |
| ArtifactSpecOne | 8 |
| ArtifactSpecTwo | 9 |
| ArtifactSpecThree | 10 |
| ArtifactSpecFour | 11 |
| ArmorCloth | 12 |
| ArmorLeather | 13 |
| ArmorMail | 14 |
| ArmorPlate | 15 |

### TransmogOutfitSlotOptionFlags (Enumeration)

| Name | Value |
|---|---|
| IllusionNotAllowed | 1 |
| DynamicOptionName | 2 |
| DisablesOffhandSlot | 4 |

### TransmogOutfitSlotOptionSheatheCategory (Enumeration)

| Name | Value |
|---|---|
| Default | 0 |
| Back | 1 |
| Side | 2 |
| Hide | 3 |

### TransmogOutfitSlotPosition (Enumeration)

| Name | Value |
|---|---|
| Left | 0 |
| Right | 1 |
| Bottom | 2 |

### TransmogOutfitSlotSaveFlags (Enumeration)

| Name | Value |
|---|---|
| AppearanceIsNotValid | 1 |

### TransmogOutfitSlotWarning (Enumeration)

| Name | Value |
|---|---|
| Ok | 0 |
| InvalidEquippedDestinationItem | 1 |
| WrongWeaponCategoryEquipped | 2 |
| WrongArmorTypeEquipped | 3 |
| EquippedItemLowLevel | 4 |
| PendingWeaponChanges | 5 |
| WeaponDoesNotSupportIllusions | 6 |
| NothingEquipped | 7 |

### TransmogOutfitTransactionFlags (Enumeration)

| Name | Value |
|---|---|
| UpdateMetadata | 1 |
| UpdateOutfitInfo | 2 |
| CreateOutfitInfo | 4 |
| UpdateSlots | 8 |
| UpdateSituations | 16 |
| AddNewOutfitMask | 20 |
| UpdateSituationsMask | 18 |
| AddOutfitAndUpdateSlots | 28 |
| FullOutfitUpdateMask | 27 |
| CreateAndUpdateOutfitInfoMask | 6 |

### TransmogOutfitTransactionType (Enumeration)

| Name | Value |
|---|---|
| UpdateMetadata | 0 |
| UpdateOutfitInfo | 1 |
| CreateOutfitInfo | 2 |
| UpdateSlots | 3 |
| UpdateSituations | 4 |

### TransmogSettingsUpdateType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| OptOut | 1 |

### TransmogSituation (Enumeration)

| Name | Value |
|---|---|
| AllSpecs | 0 |
| Spec | 1 |
| AllLocations | 2 |
| LocationRested | 3 |
| LocationHouse | 4 |
| LocationCharacterSelect | 5 |
| LocationWorld | 6 |
| LocationDelves | 7 |
| LocationDungeons | 8 |
| LocationRaids | 9 |
| LocationArenas | 10 |
| LocationBattlegrounds | 11 |
| AllMovement | 12 |
| MovementUnmounted | 13 |
| MovementSwimming | 14 |
| MovementGroundMount | 15 |
| MovementFlyingMount | 16 |
| AllEquipmentSets | 17 |
| EquipmentSets | 18 |
| AllRacialForms | 19 |
| FormNative | 20 |
| FormNonNative | 21 |
| AllWeather | 22 |
| WeatherClear | 23 |
| WeatherRain | 24 |
| WeatherSnow | 25 |
| WeatherSand | 26 |
| AllTime | 27 |
| TimeMorning | 28 |
| TimeDay | 29 |
| TimeEvening | 30 |
| TimeNight | 31 |

### TransmogSituationFlags (Enumeration)

| Name | Value |
|---|---|
| IsPlayerFacing | 1 |
| SpecUseTalentLoadout | 2 |
| AllSituation | 4 |
| DefaultsToOn | 8 |
| DynamicallyNamed | 16 |
| NoneSituation | 32 |
| DisabledSituation | 64 |

### TransmogSituationGroupFlags (Enumeration)

| Name | Value |
|---|---|
| DynamicallyCreatesGroups | 1 |

### TransmogSituationTrigger (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Manual | 1 |
| TransmogUpdate | 2 |
| Location | 3 |
| Movement | 4 |
| Specialization | 5 |
| EquipmentSet | 6 |
| Forms | 7 |
| EventOutfit | 8 |
| Weather | 9 |
| TimeOfDay | 10 |
| SettingsUpdate | 11 |

### TransmogSituationTriggerFlags (Enumeration)

| Name | Value |
|---|---|
| CanLockOutfit | 1 |
| CanChangeLockedOutfit | 2 |
| IsPlayerFacing | 4 |
| SituationsAreExclusive | 8 |
| DisabledTrigger | 16 |

### TransmogSituationTriggerType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Manual | 1 |
| Automatic | 2 |
| TransmogUpdate | 3 |

### TransmogTimeOfDayCategory (Enumeration)

| Name | Value |
|---|---|
| Morning | 0 |
| Midday | 1 |
| Evening | 2 |
| Night | 3 |

### TransmogOutfitDataConsts (Constants)

| Name | Type | Value |
|---|---|---|
| EQUIP_TRANSMOG_OUTFIT_MANUAL_SPELL_ID | number | 1247613 |
| CLEAR_TRANSMOG_OUTFIT_MANUAL_SPELL_ID | number | 1247917 |
| TRANSMOG_OUTFIT_SLOT_NONE | TransmogOutfitSlot | -1 |
