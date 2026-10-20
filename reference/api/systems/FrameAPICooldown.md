# FrameAPICooldown

Type: ScriptObject  
Environment: All

## Functions

### FrameAPICooldown:Clear

```lua
FrameAPICooldown:Clear()
```

Flags: IsProtectedFunction  

### FrameAPICooldown:GetCooldownDisplayDuration

```lua
FrameAPICooldown:GetCooldownDisplayDuration() -> duration: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Cooldown']  

The returned duration unit is milliseconds, unaffected by modRate.

### FrameAPICooldown:GetCooldownDuration

```lua
FrameAPICooldown:GetCooldownDuration() -> duration: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Cooldown']  

The returned duration unit is milliseconds and is multiplied by the modRate.

### FrameAPICooldown:GetCooldownTimes

```lua
FrameAPICooldown:GetCooldownTimes() -> start: number, duration: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Cooldown']  

### FrameAPICooldown:GetCountdownAbbrevThreshold

```lua
FrameAPICooldown:GetCountdownAbbrevThreshold() -> seconds: Seconds
```

Returns the threshold below which cooldown numbers are displayed as an abbreviated form without a unit suffix (eg. '1:31').

### FrameAPICooldown:GetCountdownFontString

```lua
FrameAPICooldown:GetCountdownFontString() -> countdownString: SimpleFontString
```

### FrameAPICooldown:GetCountdownFormatter

```lua
FrameAPICooldown:GetCountdownFormatter() -> formatter: NumericFormatter?
```

### FrameAPICooldown:GetCountdownMillisecondsThreshold

```lua
FrameAPICooldown:GetCountdownMillisecondsThreshold() -> seconds: Seconds
```

Returns the threshold below which cooldown numbers are displayed as a decimal value with one place for milliseconds (eg. '8.7').

### FrameAPICooldown:GetDrawBling

```lua
FrameAPICooldown:GetDrawBling() -> drawBling: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.CooldownStyle']  

### FrameAPICooldown:GetDrawEdge

```lua
FrameAPICooldown:GetDrawEdge() -> drawEdge: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.CooldownStyle']  

### FrameAPICooldown:GetDrawSwipe

```lua
FrameAPICooldown:GetDrawSwipe() -> drawSwipe: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.CooldownStyle']  

### FrameAPICooldown:GetEdgeScale

```lua
FrameAPICooldown:GetEdgeScale() -> edgeScale: number
```

### FrameAPICooldown:GetHideCountdownNumbers

```lua
FrameAPICooldown:GetHideCountdownNumbers() -> hideNumbers: bool
```

### FrameAPICooldown:GetMinimumCountdownDuration

```lua
FrameAPICooldown:GetMinimumCountdownDuration() -> milliseconds: Milliseconds
```

### FrameAPICooldown:GetReverse

```lua
FrameAPICooldown:GetReverse() -> reverse: bool
```

### FrameAPICooldown:GetRotation

```lua
FrameAPICooldown:GetRotation() -> rotationRadians: number
```

### FrameAPICooldown:GetUseAuraDisplayTime

```lua
FrameAPICooldown:GetUseAuraDisplayTime() -> useAuraDisplayTime: bool
```

### FrameAPICooldown:IsPaused

```lua
FrameAPICooldown:IsPaused() -> isPaused: bool
```

### FrameAPICooldown:Pause

```lua
FrameAPICooldown:Pause()
```

### FrameAPICooldown:Resume

```lua
FrameAPICooldown:Resume()
```

### FrameAPICooldown:SetBlingTexture

```lua
FrameAPICooldown:SetBlingTexture(texture: FileAsset, colorR: number, colorG: number, colorB: number, colorA: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICooldown:SetCooldown

```lua
FrameAPICooldown:SetCooldown(start: Seconds, duration: Seconds, modRate: number = 1)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Cooldown'], SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### FrameAPICooldown:SetCooldownDuration

```lua
FrameAPICooldown:SetCooldownDuration(duration: Seconds, modRate: number = 1)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Cooldown'], SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### FrameAPICooldown:SetCooldownFromDurationObject

```lua
FrameAPICooldown:SetCooldownFromDurationObject(duration: LuaDurationObject, clearIfZero: bool = true)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### FrameAPICooldown:SetCooldownFromExpirationTime

```lua
FrameAPICooldown:SetCooldownFromExpirationTime(expirationTime: Seconds, duration: Seconds, modRate: number = 1)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Cooldown'], SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### FrameAPICooldown:SetCooldownUNIX

```lua
FrameAPICooldown:SetCooldownUNIX(start: number, duration: number, modRate: number = 1)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Cooldown'], SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### FrameAPICooldown:SetCountdownAbbrevThreshold

```lua
FrameAPICooldown:SetCountdownAbbrevThreshold(seconds: Seconds)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the threshold below which cooldown numbers are displayed as an abbreviated form without a unit suffix (eg. '1:31').

### FrameAPICooldown:SetCountdownFont

```lua
FrameAPICooldown:SetCountdownFont(fontName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICooldown:SetCountdownFormatter

```lua
FrameAPICooldown:SetCountdownFormatter(formatter: NumericFormatter?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICooldown:SetCountdownMillisecondsThreshold

```lua
FrameAPICooldown:SetCountdownMillisecondsThreshold(seconds: Seconds)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the threshold below which cooldown numbers are displayed as a decimal value with one place for milliseconds (eg. '8.7').

### FrameAPICooldown:SetDrawBling

```lua
FrameAPICooldown:SetDrawBling(drawBling: bool = false)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.CooldownStyle'], SecretArguments=AllowedWhenTainted  

### FrameAPICooldown:SetDrawEdge

```lua
FrameAPICooldown:SetDrawEdge(drawEdge: bool = false)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.CooldownStyle'], SecretArguments=AllowedWhenTainted  

### FrameAPICooldown:SetDrawSwipe

```lua
FrameAPICooldown:SetDrawSwipe(drawSwipe: bool = false)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.CooldownStyle'], SecretArguments=AllowedWhenTainted  

### FrameAPICooldown:SetEdgeColor

```lua
FrameAPICooldown:SetEdgeColor(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.CooldownStyle'], SecretArguments=AllowedWhenTainted  

### FrameAPICooldown:SetEdgeScale

```lua
FrameAPICooldown:SetEdgeScale(scale: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICooldown:SetEdgeTexture

```lua
FrameAPICooldown:SetEdgeTexture(texture: FileAsset, colorR: number, colorG: number, colorB: number, colorA: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICooldown:SetHideCountdownNumbers

```lua
FrameAPICooldown:SetHideCountdownNumbers(hideNumbers: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICooldown:SetMinimumCountdownDuration

```lua
FrameAPICooldown:SetMinimumCountdownDuration(milliseconds: Milliseconds)
```

Secret: SecretArguments=AllowedWhenUntainted  

Controls the minimum duration above which countdown text will be shown. This is applied based upon the total duration of the cooldown, not the remaining duration as it ticks down.

### FrameAPICooldown:SetPaused

```lua
FrameAPICooldown:SetPaused(paused: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICooldown:SetReverse

```lua
FrameAPICooldown:SetReverse(reverse: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICooldown:SetRotation

```lua
FrameAPICooldown:SetRotation(rotationRadians: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICooldown:SetSwipeColor

```lua
FrameAPICooldown:SetSwipeColor(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.CooldownStyle'], SecretArguments=AllowedWhenTainted  

### FrameAPICooldown:SetSwipeTexture

```lua
FrameAPICooldown:SetSwipeTexture(texture: FileAsset?, colorR: number, colorG: number, colorB: number, colorA: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICooldown:SetTexCoordRange

```lua
FrameAPICooldown:SetTexCoordRange(low: vector2, high: vector2)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICooldown:SetUseAuraDisplayTime

```lua
FrameAPICooldown:SetUseAuraDisplayTime(useAuraDisplayTime: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

Aura durations are displayed slightly differently than cooldown durations. Setting this to true will adjust the display logic to stay in sync with aura timers.

### FrameAPICooldown:SetUseCircularEdge

```lua
FrameAPICooldown:SetUseCircularEdge(useCircularEdge: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted
