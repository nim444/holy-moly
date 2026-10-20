# ReportSystem

Type: System  
Namespace: `C_ReportSystem`  
Environment: All

## Functions

### C_ReportSystem.CanReportPlayer

```lua
C_ReportSystem.CanReportPlayer(playerLocation: PlayerLocation) -> canReport: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ReportSystem.CanReportPlayerForLanguage

```lua
C_ReportSystem.CanReportPlayerForLanguage(playerLocation: PlayerLocation) -> canReport: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ReportSystem.GetMajorCategoriesForReportType

```lua
C_ReportSystem.GetMajorCategoriesForReportType(reportType: ReportType) -> majorCategories: table<ReportMajorCategory>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ReportSystem.GetMajorCategoryString

```lua
C_ReportSystem.GetMajorCategoryString(majorCategory: ReportMajorCategory) -> majorCategoryString: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ReportSystem.GetMinorCategoriesForReportTypeAndMajorCategory

```lua
C_ReportSystem.GetMinorCategoriesForReportTypeAndMajorCategory(reportType: ReportType, majorCategory: ReportMajorCategory) -> minorCategories: table<ReportMinorCategory>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ReportSystem.GetMinorCategoryString

```lua
C_ReportSystem.GetMinorCategoryString(minorCategory: ReportMinorCategory) -> minorCategoryString: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ReportSystem.ReportServerLag

```lua
C_ReportSystem.ReportServerLag()
```

### C_ReportSystem.ReportStuckInCombat

```lua
C_ReportSystem.ReportStuckInCombat()
```

### C_ReportSystem.RequiresScreenshotForReportType

```lua
C_ReportSystem.RequiresScreenshotForReportType(reportType: ReportType, majorCategory: ReportMajorCategory) -> requiresScreenshot: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ReportSystem.SendReport

```lua
C_ReportSystem.SendReport(reportInfo: ReportInfo, playerLocation: PlayerLocation?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Not allowed to be called by addons

### C_ReportSystem.SetScreenshotPreviewTexture

```lua
C_ReportSystem.SetScreenshotPreviewTexture(textureObject: SimpleTexture)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ReportSystem.TakeReportScreenshot

```lua
C_ReportSystem.TakeReportScreenshot()
```

## Events

### REPORT_PLAYER_RESULT

Payload: `result: SendReportResult, reportType: ReportType`  
Flags: SynchronousEvent  

### REPORT_SCREENSHOT_READY

Payload: `none`  
Flags: SynchronousEvent
