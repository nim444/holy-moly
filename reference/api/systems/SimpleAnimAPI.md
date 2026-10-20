# SimpleAnimAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleAnimAPI:GetDuration

```lua
SimpleAnimAPI:GetDuration() -> durationSec: number
```

### SimpleAnimAPI:GetElapsed

```lua
SimpleAnimAPI:GetElapsed() -> elapsedSec: number
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimAPI:GetEndDelay

```lua
SimpleAnimAPI:GetEndDelay() -> delaySec: number
```

### SimpleAnimAPI:GetOrder

```lua
SimpleAnimAPI:GetOrder() -> order: number
```

### SimpleAnimAPI:GetProgress

```lua
SimpleAnimAPI:GetProgress() -> progress: number
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimAPI:GetRegionParent

```lua
SimpleAnimAPI:GetRegionParent() -> region: CScriptObject
```

### SimpleAnimAPI:GetScript

```lua
SimpleAnimAPI:GetScript(scriptTypeName: ScriptTypeName, bindingType: ScriptBindingType = Extrinsic) -> script: LuaFunctionReference
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Flags: RequiresSupportedScript, ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptBindings'}]  

### SimpleAnimAPI:GetSmoothProgress

```lua
SimpleAnimAPI:GetSmoothProgress() -> progress: number
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimAPI:GetSmoothing

```lua
SimpleAnimAPI:GetSmoothing() -> weights: SmoothingType
```

### SimpleAnimAPI:GetStartDelay

```lua
SimpleAnimAPI:GetStartDelay() -> delaySec: number
```

### SimpleAnimAPI:GetTarget

```lua
SimpleAnimAPI:GetTarget() -> target: CScriptObject
```

### SimpleAnimAPI:HasScript

```lua
SimpleAnimAPI:HasScript(scriptName: cstring) -> hasScript: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectType'], ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleAnimAPI:HookScript

```lua
SimpleAnimAPI:HookScript(scriptTypeName: ScriptTypeName, script: LuaFunctionReference, bindingType: ScriptBindingType = Extrinsic) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresAssignableScript, ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptBindings'}]  

### SimpleAnimAPI:IsDelaying

```lua
SimpleAnimAPI:IsDelaying() -> isDelaying: bool
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimAPI:IsDone

```lua
SimpleAnimAPI:IsDone() -> isDone: bool
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimAPI:IsPaused

```lua
SimpleAnimAPI:IsPaused() -> isPaused: bool
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimAPI:IsPlaying

```lua
SimpleAnimAPI:IsPlaying() -> isPlaying: bool
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimAPI:IsStopped

```lua
SimpleAnimAPI:IsStopped() -> isStopped: bool
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryAnimationProgress'}]  

### SimpleAnimAPI:Pause

```lua
SimpleAnimAPI:Pause()
```

### SimpleAnimAPI:Play

```lua
SimpleAnimAPI:Play()
```

### SimpleAnimAPI:Restart

```lua
SimpleAnimAPI:Restart()
```

### SimpleAnimAPI:SetChildKey

```lua
SimpleAnimAPI:SetChildKey(childKey: cstring) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ChangeAnimationTarget'}]  

### SimpleAnimAPI:SetDuration

```lua
SimpleAnimAPI:SetDuration(durationSec: number, recomputeGroupDuration: bool = true)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleAnimAPI:SetEndDelay

```lua
SimpleAnimAPI:SetEndDelay(delaySec: number, recomputeGroupDuration: bool = true)
```

Secret: SecretArguments=NotAllowed  

### SimpleAnimAPI:SetOrder

```lua
SimpleAnimAPI:SetOrder(newOrder: number)
```

Secret: SecretArguments=NotAllowed  

### SimpleAnimAPI:SetParent

```lua
SimpleAnimAPI:SetParent(parent: SimpleAnimGroup, order: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: CheckAllowChangeParent, ChecksForbiddenAspects=[{'Argument': 'parent', 'Aspect': 'Enum.ForbiddenAspect.AddAnimations'}]  

### SimpleAnimAPI:SetPlaying

```lua
SimpleAnimAPI:SetPlaying(play: bool)
```

Secret: SecretArguments=NotAllowed  

### SimpleAnimAPI:SetScript

```lua
SimpleAnimAPI:SetScript(scriptTypeName: ScriptTypeName, script: LuaFunctionReference?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresAssignableScript, ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptBindings'}]  

### SimpleAnimAPI:SetSmoothProgress

```lua
SimpleAnimAPI:SetSmoothProgress(durationSec: number)
```

Secret: SecretArguments=NotAllowed  

### SimpleAnimAPI:SetSmoothing

```lua
SimpleAnimAPI:SetSmoothing(weights: SmoothingType)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleAnimAPI:SetStartDelay

```lua
SimpleAnimAPI:SetStartDelay(delaySec: number, recomputeGroupDuration: bool = true)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleAnimAPI:SetTarget

```lua
SimpleAnimAPI:SetTarget(target: CScriptObject) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ChangeAnimationTarget'}]  

### SimpleAnimAPI:SetTargetKey

```lua
SimpleAnimAPI:SetTargetKey(key: cstring) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ChangeAnimationTarget'}]  

### SimpleAnimAPI:SetTargetName

```lua
SimpleAnimAPI:SetTargetName(name: cstring) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ChangeAnimationTarget'}]  

### SimpleAnimAPI:SetTargetParent

```lua
SimpleAnimAPI:SetTargetParent() -> success: bool
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ChangeAnimationTarget'}]  

### SimpleAnimAPI:Stop

```lua
SimpleAnimAPI:Stop()
```
