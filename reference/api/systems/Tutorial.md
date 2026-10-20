# Tutorial

Type: System  
Namespace: `C_Tutorial`  
Environment: All

## Functions

### C_Tutorial.AbandonTutorialArea

```lua
C_Tutorial.AbandonTutorialArea()
```

### C_Tutorial.GetCombatEventInfo

```lua
C_Tutorial.GetCombatEventInfo()
```

Flags: RequireNPERestricted  

### C_Tutorial.ReturnToTutorialArea

```lua
C_Tutorial.ReturnToTutorialArea()
```

### C_Tutorial.SendTutorialStartButtonTelem

```lua
C_Tutorial.SendTutorialStartButtonTelem(skipTutorial: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

## Events

### LEAVING_TUTORIAL_AREA

Payload: `none`  
Flags: SynchronousEvent  

### NPE_TUTORIAL_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### TUTORIAL_COMBAT_EVENT

Payload: `none`  
Flags: RequireNPERestricted, SynchronousEvent  

### TUTORIAL_HIGHLIGHT_SPELL

Payload: `spellID: number, tutorialGlobalStringTag: cstring`  
Flags: SynchronousEvent  

### TUTORIAL_TRIGGER

Payload: `tutorialIndex: number, forceShow: bool`  
Flags: SynchronousEvent  

### TUTORIAL_UNHIGHLIGHT_SPELL

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### FrameTutorialAccount (Enumeration)

| Name | Value |
|---|---|
| HudRevampBagChanges | 1 |
| PerksProgramActivitiesIntro | 2 |
| EditModeManager | 3 |
| TransmogSetsTab | 4 |
| MountCollectionDragonriding | 5 |
| LFGList | 6 |
| HeirloomJournalLevel | 7 |
| TimerunnersAdvantage | 8 |
| AccountWideReputation | 9 |
| TransferableCurrencies | 10 |
| BindToAccountUntilEquip | 11 |
| CompletedQuestsFilter | 12 |
| CompletedQuestsFilterSeen | 13 |
| ConcentrationCurrency | 14 |
| MapLegendOpened | 15 |
| NpcCraftingOrders | 16 |
| NpcCraftingOrderCreateButton | 17 |
| NpcCraftingOrderTabNew | 18 |
| LocalStoriesFilterSeen | 19 |
| EventSchedulerTabSeen | 20 |
| AssistedCombatRotationDragSpell | 21 |
| AssistedCombatRotationActionButton | 22 |
| HousingDecorCleanup | 23 |
| HousingDecorPlace | 24 |
| HousingDecorClippingGrid | 25 |
| HousingDecorCustomization | 26 |
| HousingDecorLayout | 27 |
| HousingHouseFinderMap | 28 |
| HousingHouseFinderVisitHouse | 29 |
| HousingItemAcquisition | 30 |
| HousingNewPip | 31 |
| PerksProgramActivitiesOpen | 32 |
| EnconterJournalTutorialsTabSeen | 33 |
| HousingMarketTab | 34 |
| HousingTeleportButton | 35 |
| RPETalentStarterBuild | 36 |
| HousingInvalidCollision | 37 |
| HousingModesUnlocked | 38 |
| HousingExpertMode | 39 |
| HousingCleanupMode | 40 |
| TransmogOutfits | 41 |
| TransmogSets | 42 |
| TransmogCustomSets | 43 |
| TransmogSituations | 44 |
| TransmogWeaponOptions | 45 |
| TransmogTrialOfStyle | 46 |
| TransmogCustomSetsMigration | 47 |
| HousingEndeavorsTabSeen | 48 |
| RunesOfPower | 49 |
| HousingPetBeds | 50 |
| Reserved1 | 51 |

## Preconditions

- `RequireNPERestricted` (FailureMode=ReturnNothing)
