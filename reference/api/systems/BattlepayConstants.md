# BattlepayConstants

Type: None

## Tables

### BulkPurchaseResult (Enumeration)

| Name | Value |
|---|---|
| ResultOk | 0 |
| ResultInProgress | 1 |
| ResultPartialSuccess | 2 |
| ResultFailed | 3 |
| ResultTooManyProducts | 4 |
| ResultSystemDisabled | 5 |
| ResultInsufficientFunds | 6 |
| ResultPurchaseTimeout | 7 |

### BulkPurchaseStatus (Enumeration)

| Name | Value |
|---|---|
| PlacingOrders | 0 |
| PurchasesPending | 1 |
| FetchEntitlements | 2 |
| Done | 3 |
| Failed | 4 |

### BulkRefundResult (Enumeration)

| Name | Value |
|---|---|
| ResultOk | 0 |
| ResultFailed | 1 |
| ResultInvalidRequest | 2 |
| ResultRefundWindowExpired | 3 |
| ResultSystemDisabled | 4 |
| ResultTimeout | 5 |

### CanRedeemTokenForBalanceResult (Enumeration)

| Name | Value |
|---|---|
| Ok | 0 |
| FailureCap | 1 |

### LoginTicketLicenses (Enumeration)

| Name | Value |
|---|---|
| GmLicense | 11486 |

### PurchaseResult (Enumeration)

| Name | Value |
|---|---|
| Ok | 0 |
| ErrorRiskDenied | 1 |
| ErrorOrderFailed | 2 |
| ErrorClientTimeout | 3 |
| ErrorClientDeclined | 4 |
| ErrorFailedToCreatePurchaseRecord | 5 |
| ErrorFailedToGetPurchaseID | 6 |
| ErrorFailedToSaveMopAndRiskStatus | 7 |
| ErrorFailedToSaveMopAndRiskResponse | 8 |
| ErrorClientGone | 9 |
| ErrorFailedToSavePlaceOrderStatus | 10 |
| ErrorBattlepayTimeoutMopAndRisk | 11 |
| ErrorCurrencyInvalidInRegion | 12 |
| ErrorBattlepayTemporarilyUnavailable | 13 |
| ErrorBattlepayDisabled | 14 |
| ErrorServerRestarted | 15 |
| ErrorInvalidProduct | 16 |
| ErrorInvalidRegionGroupMask | 17 |
| ErrorProductInvalidInRegion | 18 |
| ErrorDistributionObjectNotFound | 19 |
| ErrorDistributionObjectAlreadyAssigned | 20 |
| ErrorRiskResponseMissingScore | 21 |
| ErrorMopAndRiskAmqpRpcFailed | 22 |
| ErrorMopAndRiskRpcErrorFromBattlepay | 23 |
| ErrorMopAndRiskUnexpectedResponseFromBattlepay | 24 |
| ErrorMopAndRiskNoValidPaymentMethods | 25 |
| ErrorOrderCanceledPriceChange | 26 |
| ErrorBuyingProductNotAllowedInGlueScreen | 27 |
| ErrorMopAndRiskNotEnoughBalance | 28 |
| ErrorPlaceOrderNotEnoughBalance | 29 |
| ErrorProgrammerManualFail | 30 |
| ErrorThrottledByUserServer | 31 |
| ErrorBuyingProductNotAllowedInWorld | 32 |
| ErrorBlockedByParentalControls | 33 |
| ErrorNoStorePurchaseFlagIsSet | 34 |
| ErrorDistributionObjectInvalidChoice | 35 |
| ErrorInvalidCreditCardExpiryDate | 36 |
| ErrorAuthorizingPayment | 37 |
| ErrorPaymentProviderDeniedPayment | 38 |
| ErrorOverSpendingLimit | 39 |
| ErrorClientTimeoutChallenge | 40 |
| ErrorClientDeclinedChallenge | 41 |
| ErrorDistributionObjectInvalidTarget | 42 |
| ErrorFixedLicenseProductAlreadyExists | 43 |
| ErrorDistributionObjectTrialBlocked | 44 |
| ErrorDistributionObjectExpansionBlocked | 45 |
| ErrorOwnsConsumableToken | 46 |
| ErrorTooManyTokens | 47 |
| ErrorCommerceServerDisabled | 48 |
| ErrorFailedToWriteVasPurchaseID | 49 |
| ErrorFailedToWriteVasLicenseID | 50 |
| ErrorCharacterUpgradeOperationInProgress | 51 |
| ErrorInvalidPlatform | 52 |
| ErrorInvalidDeviceID | 53 |
| ErrorFailedToSaveValidatePurchaseStatus | 54 |
| ErrorFailedToSaveValidatePurchaseResponse | 55 |
| ErrorBattlepayTimeoutValidatePurchase | 56 |
| ErrorProductNotPurchasable | 57 |
| ErrorFailedToSaveClientCheckoutStatus | 58 |
| ErrorFailedOldPurchaseFlow | 59 |
| ErrorClientCheckoutTimeout | 60 |
| ErrorFailedToSaveValidationHashStatus | 61 |
| ErrorBattlepayTimeoutValidationHash | 62 |
| ErrorClientCheckoutCanceledOrFailed | 63 |
| ErrorCouldNotGetValidationHash | 64 |
| ErrorDistributionObjectWrongGameAccount | 65 |
| ErrorClientRestricted | 66 |
| ErrorFailedToSaveRedeemTokenStatus | 67 |
| ErrorInvalidPurchaseID | 68 |
| ErrorTokenRedemptionOrderFailed | 69 |
| ErrorVasTransactionCreateFailed | 70 |
| ErrorInManualReview | 71 |

### SimpleOrderStatus (Enumeration)

| Name | Value |
|---|---|
| Invalid | 0 |
| Creating | 1 |
| InProgress | 2 |
| Success | 3 |
| Failed | 4 |

### VasTransactionPurchaseResult (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| VasPurchaseDisabled | 1 |
| NoneCharacter | 2 |
| NoneProduct | 3 |
| OnlyOneVasAtATime | 4 |
| InvalidDestinationRealm | 5 |
| InvalidDestinationAccount | 6 |
| InvalidSourceAccount | 7 |
| DisallowedSourceAccount | 8 |
| DisallowedDestinationAccount | 9 |
| UnknownError | 10 |
| LowerBoxLevel | 11 |
| InvalidDistribution | 12 |
| InvalidBpayProductID | 13 |
| InvalidBpayDeliverableID | 14 |
| InvalidBpayProductType | 15 |
| EndServerErrors | 16 |
| BeginProxyErrors | 17 |
| ProxyBadObjType | 18 |
| ProxyObjNotInDb | 19 |
| ProxyUniqueKey | 20 |
| ProxyDbError | 21 |
| ProxyDataInvalid | 22 |
| ProxyLostProxyConnection | 23 |
| ProxyLocksFailed | 24 |
| ProxyMissingResultsPtr | 25 |
| ProxyLockedForTransfer | 26 |
| ProxyNoReturnValue | 27 |
| ProxyDeleteNotSupported | 28 |
| ProxyObjDropped | 29 |
| ProxyCannotDeleteGuildLeader | 30 |
| ProxyCannotDeleteArenaCaptain | 31 |
| ProxyMoneyLimitExceeded | 32 |
| ProxyBadRequestContained | 33 |
| ProxyIsReadonly | 34 |
| ProxyBadDbType | 35 |
| ProxyOperationAlreadyInProgress | 36 |
| ProxyExternalUpdateDetected | 37 |
| ProxyCharacterLevelTooHigh | 38 |
| ProxyCharacterTransferred | 39 |
| ProxyCharacterTransferredNoBoostInProgress | 40 |
| ProxyLockedForUpgrade | 41 |
| ProxyLockedForToken | 42 |
| ProxyLockedForVas | 43 |
| ProxyGenericError | 44 |
| ProxyCannotInsertNull | 45 |
| ProxyCannotUndeleteTrialBoostCharacter | 46 |
| ProxyPredicateFailed | 47 |
| ProxyWeeklyRewardNotFound | 48 |
| ProxyInsertRequestContainedNoData | 49 |
| ProxyInvalidKey | 50 |
| ProxyBindFailed | 51 |
| ProxyTooManyRows | 52 |
| ProxyCharacterHasWoWToken | 53 |
| ProxyTooBusyBackOff | 54 |
| ProxyAccountDataTooBig | 55 |
| EndProxyErrors | 56 |
| BeginDbErrors | 20010 |
| DbRealmNotEligible | 20011 |
| DbCannotMoveGuildmaster | 20012 |
| DbMaxCharactersOnServer | 20013 |
| DbNoMixedAlliance | 20014 |
| DbDuplicateCharacterName | 20015 |
| DbHasMail | 20016 |
| DbAccountDoesNotOwnCharacter | 20017 |
| DbMoveInProgress | 20018 |
| DbCharacterDoesNotExist | 20019 |
| DbNoCopiesAvailable | 20020 |
| DbUnderMinLevelReq | 20021 |
| DbIneligibleTargetRealm | 20022 |
| DbTransferDateTooSoon | 20023 |
| DbNewNameTooLong | 20024 |
| DbCharNotLocked | 20025 |
| DbCharLocked | 20026 |
| DbAllianceNotEligible | 20027 |
| DbBatchProcessingDisabled | 20028 |
| DbNoneBatchQueueID | 20029 |
| DbTransferNotFinalized | 20030 |
| DbTransferNotCancellable | 20031 |
| DbTooMuchMoneyForLevel | 20032 |
| DbHasAuctions | 20033 |
| DbLastSaveTooRecent | 20034 |
| DbTransferNotLockable | 20035 |
| DbTransferNotUnlockable | 20036 |
| DbNoneRealmForEvent | 20037 |
| DbEventRealmClosed | 20038 |
| DbNoneTemplateForEvent | 20039 |
| DbInventoryCorrupt | 20040 |
| DbCouldNotObtainCharLock | 20041 |
| DbNoneLockID | 20042 |
| DbLockNotAcknowledged | 20043 |
| DbLockAlreadyRequested | 20044 |
| DbNoneSupportQueueID | 20045 |
| DbNoneSupportActionID | 20046 |
| DbNotRollbackable | 20047 |
| DbNotMovebackable | 20048 |
| DbRenameAlreadyRequested | 20049 |
| DbReservationExpired | 20050 |
| DbNameNotAvailable | 20051 |
| DbLastRenameTooRecent | 20052 |
| DbReservationDoesNotMatch | 20053 |
| DbLastRequestTooSoon | 20054 |
| DbAlreadyRenameFlagged | 20055 |
| DbMultipleTransferCn | 20056 |
| DbCustomizeAlreadyRequested | 20057 |
| DbLastCustomizeTooSoon | 20058 |
| DbWaitingForPayment | 20059 |
| DbUnableToCustomize | 20060 |
| DbFactionChangeTooSoon | 20061 |
| DbRaceClassComboIneligible | 20062 |
| DbDuplicateSupportRequest | 20063 |
| DbCannotMoveArenaCaptn | 20064 |
| DbNoCsiFound | 20065 |
| DbPendingItemAudit | 20066 |
| DbBatchStateInvalid | 20067 |
| DbEventNotActive | 20068 |
| DbGuildRankInsufficient | 20069 |
| DbCharacterWithoutGuild | 20070 |
| DbDeletedGuild | 20071 |
| DbGmSenorityInsufficient | 20072 |
| DbAuthenticatorInsufficient | 20073 |
| DbGuildLevelInsufficient | 20074 |
| DbRegionalDbNotFound | 20075 |
| DbIneligibleMapID | 20076 |
| DbBnetAccountNotProvided | 20077 |
| DbBpayDeliveryPending | 20078 |
| DbHasBpayToken | 20079 |
| DbHasHeirloomItem | 20080 |
| DbResultSourceAccountBanned | 20081 |
| DbResultAccountRestricted | 20082 |
| DbLastSaveTooDistant | 20083 |
| DbCagedPetInInventory | 20084 |
| DbOnBoostCooldown | 20085 |
| DbNewLeaderInvalid | 20086 |
| DbPvEPvPTransferNotAllowed | 20087 |
| DbNeedsLevelSquish | 20088 |
| DbHasUnclaimedCacheRewards | 20089 |
| DbNeedsEraChoice | 20090 |
| DbHasNewPlayerExperienceRestriction | 20091 |
| DbHasCraftingOrders | 20092 |
| DbNameChangeSkipped | 20093 |
| DbInvalidName | 20094 |
| DbBoostProcessingDisabled | 20095 |
| DbHouseOwnerRestriction | 20096 |
| EndDbErrors | 20097 |
