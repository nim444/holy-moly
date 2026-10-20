# SplashScreen

Type: System  
Namespace: `C_SplashScreen`  
Environment: All

## Functions

### C_SplashScreen.AcknowledgeSplash

```lua
C_SplashScreen.AcknowledgeSplash()
```

### C_SplashScreen.CanViewSplashScreen

```lua
C_SplashScreen.CanViewSplashScreen() -> canView: bool
```

### C_SplashScreen.RequestLatestSplashScreen

```lua
C_SplashScreen.RequestLatestSplashScreen(fromGameMenu: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SplashScreen.SendSplashScreenActionLaunchedTelem

```lua
C_SplashScreen.SendSplashScreenActionLaunchedTelem()
```

Flags: HasRestrictions  

### C_SplashScreen.SendSplashScreenCloseTelem

```lua
C_SplashScreen.SendSplashScreenCloseTelem()
```

Flags: HasRestrictions  

## Events

### OPEN_SPLASH_SCREEN

Payload: `info: SplashScreenInfo?`  
Flags: SynchronousEvent  

## Tables

### SplashScreenInfo (Structure)

- `textureKit: textureKit`
- `minDisplayCharLevel: number`
- `minQuestDisplayLevel: number`
- `soundKitID: number`
- `allianceQuestID: number?`
- `hordeQuestID: number?`
- `header: string`
- `topLeftFeatureTitle: string`
- `topLeftFeatureDesc: string`
- `bottomLeftFeatureTitle: string`
- `bottomLeftFeatureDesc: string`
- `rightFeatureTitle: string`
- `rightFeatureDesc: string`
- `shouldShowQuest: bool`
- `screenType: SplashScreenType`
- `gameMenuRequest: bool`
