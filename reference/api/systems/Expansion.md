# Expansion

Type: System  
Environment: All

## Functions

### CanUpgradeToCurrentExpansion

```lua
CanUpgradeToCurrentExpansion() -> canUpgradeExpansion: bool
```

### DoesCurrentLocaleSellExpansionLevels

```lua
DoesCurrentLocaleSellExpansionLevels() -> regionSellsExpansions: bool
```

### GetAccountExpansionLevel

```lua
GetAccountExpansionLevel() -> expansionLevel: number
```

### GetClientDisplayExpansionLevel

```lua
GetClientDisplayExpansionLevel() -> expansionLevel: number
```

### GetCreditsDisplayInfo

```lua
GetCreditsDisplayInfo() -> info: table<CreditsDisplayInfo>
```

### GetCurrentRegionName

```lua
GetCurrentRegionName() -> regionName: cstring
```

### GetExpansionDisplayInfo

```lua
GetExpansionDisplayInfo(expansionLevel: number, desiredReleaseType: ReleaseType?) -> info: ExpansionDisplayInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetExpansionForLevel

```lua
GetExpansionForLevel(playerLevel: number) -> expansionLevel: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### GetExpansionLevel

```lua
GetExpansionLevel() -> expansionLevel: number
```

### GetExpansionTrialInfo

```lua
GetExpansionTrialInfo() -> isExpansionTrialAccount: bool, expansionTrialRemainingSeconds: time_t?
```

### GetMaxLevelForExpansionLevel

```lua
GetMaxLevelForExpansionLevel(expansionLevel: number) -> maxLevel: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Maps an expansion level to a maximum character level for that expansion.

### GetMaxLevelForLatestExpansion

```lua
GetMaxLevelForLatestExpansion() -> maxLevel: number
```

### GetMaxLevelForPlayerExpansion

```lua
GetMaxLevelForPlayerExpansion() -> maxLevel: number
```

### GetMaximumExpansionLevel

```lua
GetMaximumExpansionLevel() -> expansionLevel: number
```

### GetMinimumExpansionLevel

```lua
GetMinimumExpansionLevel() -> expansionLevel: number
```

### GetNumExpansions

```lua
GetNumExpansions() -> numExpansions: number
```

### GetServerExpansionLevel

```lua
GetServerExpansionLevel() -> serverExpansionLevel: number
```

### GetUpgradeExpansionLevel

```lua
GetUpgradeExpansionLevel() -> upgradeExpansionLevel: number
```

### IsDemonHunterAvailable

```lua
IsDemonHunterAvailable() -> available: bool
```

### IsExpansionTrial

```lua
IsExpansionTrial() -> isExpansionTrialAccount: bool
```

### IsTrialAccount

```lua
IsTrialAccount() -> isTrialAccount: bool
```

### IsVeteranTrialAccount

```lua
IsVeteranTrialAccount() -> isVeteranTrialAccount: bool
```

### SendSubscriptionInterstitialResponse

```lua
SendSubscriptionInterstitialResponse(response: SubscriptionInterstitialResponseType)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### ShouldShowExpansionUpgradeBanner

```lua
ShouldShowExpansionUpgradeBanner() -> showUpgradeBanner: bool
```

## Events

### MAX_EXPANSION_LEVEL_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### MIN_EXPANSION_LEVEL_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### SHOW_SUBSCRIPTION_INTERSTITIAL

Payload: `type: SubscriptionInterstitialType`  
Flags: SynchronousEvent  

## Tables

### SubscriptionInterstitialResponseType (Enumeration)

| Name | Value |
|---|---|
| Clicked | 0 |
| Closed | 1 |
| WebRedirect | 2 |

### SubscriptionInterstitialType (Enumeration)

| Name | Value |
|---|---|
| Standard | 0 |
| LeftNpeArea | 1 |
| MaxLevel | 2 |

### CreditsDisplayInfo (Structure)

- `isDefault: bool`
- `creditsFileID: number`
- `keyArt: string`
- `background: string`
- `name: string`
- `logo: fileID`
- `soundKit: number?`

### ExpansionDisplayInfo (Structure)

- `logo: fileID`
- `banner: textureAtlas`
- `features: table<ExpansionDisplayInfoFeature>`
- `highResBackgroundID: fileID`
- `lowResBackgroundID: fileID`
- `textureKit: textureKit`
- `glueAmbianceSoundKit: number?`
- `glueMusicSoundKit: number?`
- `glueCreditsSoundKit: number?`

### ExpansionDisplayInfoFeature (Structure)

- `icon: fileID`
- `text: cstring`
