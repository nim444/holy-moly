# SimpleAnimGroupAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleAnimGroupAPI:CreateAnimation

```lua
SimpleAnimGroupAPI:CreateAnimation(animationType: cstring?, name: cstring?, templateName: cstring?) -> anim: SimpleAnim
```

Secret: SecretArguments=NotAllowed  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.AddAnimations'}]  

### SimpleAnimGroupAPI:Finish

```lua
SimpleAnimGroupAPI:Finish()
```

### SimpleAnimGroupAPI:GetAnimationSpeedMultiplier

```lua
SimpleAnimGroupAPI:GetAnimationSpeedMultiplier() -> animationSpeedMultiplier: number
```

### SimpleAnimGroupAPI:GetAnimations

```lua
SimpleAnimGroupAPI:GetAnimations() -> anims: SimpleAnim
```

### SimpleAnimGroupAPI:GetDuration

```lua
SimpleAnimGroupAPI:GetDuration() -> durationSec: number
```

### SimpleAnimGroupAPI:GetElapsed

```lua
SimpleAnimGroupAPI:GetElapsed() -> elapsedSec: number
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimGroupAPI:GetLoopState

```lua
SimpleAnimGroupAPI:GetLoopState() -> loopState: cstring
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimGroupAPI:GetLooping

```lua
SimpleAnimGroupAPI:GetLooping() -> loopType: LoopType
```

### SimpleAnimGroupAPI:GetProgress

```lua
SimpleAnimGroupAPI:GetProgress() -> progress: number
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimGroupAPI:GetScript

```lua
SimpleAnimGroupAPI:GetScript(scriptTypeName: ScriptTypeName, bindingType: ScriptBindingType = Extrinsic) -> script: LuaFunctionReference
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Flags: RequiresSupportedScript, ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptBindings'}]  

### SimpleAnimGroupAPI:HasScript

```lua
SimpleAnimGroupAPI:HasScript(scriptName: cstring) -> hasScript: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectType'], ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleAnimGroupAPI:HookScript

```lua
SimpleAnimGroupAPI:HookScript(scriptTypeName: ScriptTypeName, script: LuaFunctionReference, bindingType: ScriptBindingType = Extrinsic) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresAssignableScript, ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptBindings'}]  

### SimpleAnimGroupAPI:IsDone

```lua
SimpleAnimGroupAPI:IsDone() -> isDone: bool
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimGroupAPI:IsPaused

```lua
SimpleAnimGroupAPI:IsPaused() -> isPaused: bool
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimGroupAPI:IsPendingFinish

```lua
SimpleAnimGroupAPI:IsPendingFinish() -> isPendingFinish: bool
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimGroupAPI:IsPlaying

```lua
SimpleAnimGroupAPI:IsPlaying() -> isPlaying: bool
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimGroupAPI:IsReverse

```lua
SimpleAnimGroupAPI:IsReverse() -> isReverse: bool
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimGroupAPI:IsSetToFinalAlpha

```lua
SimpleAnimGroupAPI:IsSetToFinalAlpha() -> isSetToFinalAlpha: bool
```

### SimpleAnimGroupAPI:Pause

```lua
SimpleAnimGroupAPI:Pause()
```

### SimpleAnimGroupAPI:Play

```lua
SimpleAnimGroupAPI:Play(reverse: bool = false, offset: number = 0)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleAnimGroupAPI:RemoveAnimations

```lua
SimpleAnimGroupAPI:RemoveAnimations()
```

### SimpleAnimGroupAPI:Restart

```lua
SimpleAnimGroupAPI:Restart(reverse: bool = false, offset: number = 0)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleAnimGroupAPI:SetAnimationSpeedMultiplier

```lua
SimpleAnimGroupAPI:SetAnimationSpeedMultiplier(animationSpeedMultiplier: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleAnimGroupAPI:SetLooping

```lua
SimpleAnimGroupAPI:SetLooping(loopType: LoopType)
```

Secret: SecretArguments=NotAllowed  

### SimpleAnimGroupAPI:SetPlaying

```lua
SimpleAnimGroupAPI:SetPlaying(play: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleAnimGroupAPI:SetScript

```lua
SimpleAnimGroupAPI:SetScript(scriptTypeName: ScriptTypeName, script: LuaFunctionReference?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresAssignableScript, ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptBindings'}]  

### SimpleAnimGroupAPI:SetToFinalAlpha

```lua
SimpleAnimGroupAPI:SetToFinalAlpha(setToFinalAlpha: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleAnimGroupAPI:Stop

```lua
SimpleAnimGroupAPI:Stop()
```
