# ScriptedAnimations

Type: System  
Namespace: `C_ScriptedAnimations`  
Environment: All

## Functions

### C_ScriptedAnimations.GetAllScriptedAnimationEffects

```lua
C_ScriptedAnimations.GetAllScriptedAnimationEffects() -> scriptedAnimationEffects: table<ScriptedAnimationEffect>
```

## Events

### SCRIPTED_ANIMATIONS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### ScriptedAnimationBehavior (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| TargetShake | 1 |
| TargetKnockBack | 2 |
| SourceRecoil | 3 |
| SourceCollideWithTarget | 4 |
| UIParentShake | 5 |

### ScriptedAnimationFlags (Enumeration)

| Name | Value |
|---|---|
| UseTargetAsSource | 1 |

### ScriptedAnimationTrajectory (Enumeration)

| Name | Value |
|---|---|
| AtSource | 0 |
| AtTarget | 1 |
| Straight | 2 |
| CurveLeft | 3 |
| CurveRight | 4 |
| CurveRandom | 5 |
| HalfwayBetween | 6 |

### ScriptedAnimationEffect (Structure)

- `id: number`
- `visual: fileID`
- `visualScale: number`
- `duration: number`
- `trajectory: ScriptedAnimationTrajectory`
- `yawRadians: number`
- `pitchRadians: number`
- `rollRadians: number`
- `offsetX: number`
- `offsetY: number`
- `offsetZ: number`
- `animation: number`
- `animationSpeed: number`
- `alpha: number`
- `useTargetAsSource: bool`
- `startBehavior: ScriptedAnimationBehavior?`
- `startSoundKitID: number?`
- `finishEffectID: number?`
- `finishBehavior: ScriptedAnimationBehavior?`
- `finishSoundKitID: number?`
- `startAlphaFade: number?`
- `startAlphaFadeDuration: number?`
- `endAlphaFade: number?`
- `endAlphaFadeDuration: number?`
- `animationStartOffset: number?`
- `loopingSoundKitID: number?`
- `particleOverrideScale: number?`
