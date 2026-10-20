# AccountConstants

Type: None

## Tables

### AccountData (Enumeration)

| Name | Value |
|---|---|
| Config | 0 |
| Config2 | 1 |
| Bindings | 2 |
| Bindings2 | 3 |
| Macros | 4 |
| Macros2 | 5 |
| UILayout | 6 |
| ChatSettings | 7 |
| TtsSettings | 8 |
| TtsSettings2 | 9 |
| FlaggedIDs | 10 |
| FlaggedIDs2 | 11 |
| ClickBindings | 12 |
| UIEditModeAccount | 13 |
| UIEditModeChar | 14 |
| FrontendChatSettings | 15 |
| CharacterListOrder | 16 |
| CooldownManager | 17 |
| CooldownManager2 | 18 |
| Shop2PendingOrders | 19 |

### AccountDataUpdateStatus (Enumeration)

| Name | Value |
|---|---|
| Success | 0 |
| Failed | 1 |
| Corrupt | 2 |
| Toobig | 3 |

### AccountExportResult (Enumeration)

| Name | Value |
|---|---|
| Success | 0 |
| UnknownError | 1 |
| Cancelled | 2 |
| ShuttingDown | 3 |
| TimedOut | 4 |
| NoAccountFound | 5 |
| RequestedInvalidCharacter | 6 |
| RpcError | 7 |
| FileInvalid | 8 |
| FileWriteFailed | 9 |
| Unavailable | 10 |
| AlreadyInProgress | 11 |
| FailedToLockAccount | 12 |
| FailedToGenerateFile | 13 |

### AccountGetListRequestType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Battlepets | 1 |

### AccountSequenceCacheType (Enumeration)

| Name | Value |
|---|---|
| Invalid | 0 |
| Local | 1 |
| HouseDecor | 2 |

### AccountTransType (Enumeration)

| Name | Value |
|---|---|
| ProxyForwarder | 0 |
| Purchase | 1 |
| Distribution | 2 |
| Battlepet | 3 |
| Achievements | 4 |
| Criteria | 5 |
| Mounts | 6 |
| Characters | 7 |
| Purchases | 8 |
| ArchivedPurchases | 9 |
| Distributions | 10 |
| CurrencyCaps | 11 |
| QuestLog | 12 |
| CriteriaNotif | 13 |
| Settings | 14 |
| FixedLicense | 15 |
| AddLicense | 16 |
| ItemCollections | 17 |
| AuctionableToken | 18 |
| ConsumableToken | 19 |
| VasTransaction | 20 |
| Productitem | 21 |
| TrialBoostHistory | 22 |
| TrialBoostHistories | 23 |
| QuestCriteria | 24 |
| BattlenetAccount | 25 |
| AccountCurrencies | 26 |
| RafRecruiterAcceptances | 27 |
| RafFriendMonth | 28 |
| RafReward | 29 |
| DynamicCriteria | 30 |
| RafActivity | 31 |
| CreateOrderInfo | 32 |
| ProxyHonorInitialConversion | 33 |
| ProxyCreateAccountHonor | 34 |
| ProxyValidateAccountHonor | 35 |
| ProxyGmSetHonor | 36 |
| ProxyGenerateBpayID | 37 |
| AccountNotifications | 38 |
| PerkItemHold | 39 |
| PerkPendingRewards | 40 |
| PerkPastRewards | 41 |
| PerkTransaction | 42 |
| OutstandingRpc | 43 |
| LoadWowlabs | 44 |
| UpgradeAccount | 45 |
| GetOrderStatusByPurchaseID | 46 |
| Items | 47 |
| BankTab | 48 |
| Factions | 49 |
| BitVectors | 50 |
| CombinedQuestLog | 51 |
| PlayerDataElements | 52 |
| CharacterDataMerge | 53 |
| AccountStore | 54 |
| WarbandGroups | 55 |
| Mapping | 56 |
| CharacterItems | 57 |
| CurrencyTransferLog | 58 |
| LgVendorPurchase | 59 |
| SaveWarbandGroups | 60 |
| Profile | 61 |
| WarbandSceneCollection | 62 |
| EventRecords | 63 |
| HousingItem | 64 |
| TransmogOutfitCollection | 65 |
| HouseInitiativeFavor | 66 |

### BnetAccountFlag (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| BattlePetTrainer | 1 |
| RafVeteranNotified | 2 |
| TwitterLinked | 4 |
| TwitterHasTempSecret | 8 |
| Employee | 16 |
| EmployeeFlagIsManual | 32 |
| AccountQuestBitFixUp | 64 |
| AchievementsToBi | 128 |
| InvalidTransmogsFixUp | 256 |
| InvalidTransmogsFixUp2 | 512 |
| GdprErased | 1024 |
| DarkRealmLightCopy | 2048 |
| QuestLogFlagsFixUp | 4096 |
| WasSecured | 8192 |
| LockedForExport | 16384 |
| CanBuyAhGameTimeTokens | 32768 |
| PetAchievementFixUp | 65536 |
| IsLegacy | 131072 |
| CataLegendaryMountChecked | 262144 |
| CataLegendaryMountObtained | 524288 |
| MopQuestLogFlagsFixUp | 1048576 |
| Unused | 2097152 |

### ChallengeModeHistoryFlags (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| ConfirmedLeaver | 1 |

### ChallengeModeHistoryResult (Enumeration)

| Name | Value |
|---|---|
| Successful | 0 |
| Leaver | 1 |

### ChallengeModeHistoryStatus (Enumeration)

| Name | Value |
|---|---|
| Normal | 0 |
| Leaver | 1 |

### DisableAccountProfilesFlags (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Document | 1 |
| SharedCollections | 2 |
| MountsCollections | 4 |
| PetsCollections | 8 |
| ItemsCollections | 16 |
| DecorsCollections | 32 |

### ItemCollectionType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Toy | 1 |
| Heirloom | 2 |
| Transmog | 3 |
| TransmogSetFavorite | 4 |
| RuneforgeLegendaryAbility | 5 |
| TransmogIllusion | 6 |
| WarbandScene | 7 |
| Room | 8 |
| ExteriorFixture | 9 |
| RoomTheme | 10 |
| RoomMaterial | 11 |
| TransmogOutfit | 12 |
| HouseType | 13 |

### SdToggleUsageLocation (Enumeration)

| Name | Value |
|---|---|
| BeforeLogin | 0 |
| CharacterCreation | 1 |
| BarberShop | 2 |
| OptionsMenu | 3 |
