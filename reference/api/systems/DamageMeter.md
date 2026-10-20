# DamageMeter

Type: System  
Namespace: `C_DamageMeter`  
Environment: All

## Functions

### C_DamageMeter.GetAvailableCombatSessions

```lua
C_DamageMeter.GetAvailableCombatSessions() -> availableSessions: table<DamageMeterAvailableCombatSession>
```

Returns a list of combat sessions currently being tracked.

### C_DamageMeter.GetCombatSessionFromID

```lua
C_DamageMeter.GetCombatSessionFromID(sessionID: number, type: DamageMeterType) -> session: DamageMeterCombatSession
```

Secret: SecretWhenInCombat, SecretArguments=AllowedWhenUntainted  

Returns the data for the player's combat session with the specified ID.

### C_DamageMeter.GetCombatSessionFromType

```lua
C_DamageMeter.GetCombatSessionFromType(sessionType: DamageMeterSessionType, type: DamageMeterType) -> session: DamageMeterCombatSession
```

Secret: SecretWhenInCombat, SecretArguments=AllowedWhenUntainted  

Returns the data for the player's current combat session.

### C_DamageMeter.GetCombatSessionSourceFromID

```lua
C_DamageMeter.GetCombatSessionSourceFromID(sessionID: number, type: DamageMeterType, sourceGUID: WOWGUID?, sourceCreatureID: number?) -> sessionSource: DamageMeterCombatSessionSource
```

Secret: SecretWhenInCombat, SecretArguments=AllowedWhenUntainted  

Returns the data for a single source (unit) in the player's current combat session with the specified ID.

### C_DamageMeter.GetCombatSessionSourceFromType

```lua
C_DamageMeter.GetCombatSessionSourceFromType(sessionType: DamageMeterSessionType, type: DamageMeterType, sourceGUID: WOWGUID?, sourceCreatureID: number?) -> sessionSource: DamageMeterCombatSessionSource
```

Secret: SecretWhenInCombat, SecretArguments=AllowedWhenUntainted  

Returns the data for a single source (unit) in the player's current combat session.

### C_DamageMeter.GetSessionDurationSeconds

```lua
C_DamageMeter.GetSessionDurationSeconds(sessionType: DamageMeterSessionType) -> durationSeconds: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the amount of time a combat session has lasted

### C_DamageMeter.IsDamageMeterAvailable

```lua
C_DamageMeter.IsDamageMeterAvailable() -> isAvailable: bool, failureReason: string
```

Returns whether the player can enable and use the Damage Meter.

### C_DamageMeter.ResetAllCombatSessions

```lua
C_DamageMeter.ResetAllCombatSessions()
```

Clears the data for all the player's combat sessions.

## Events

### DAMAGE_METER_COMBAT_SESSION_UPDATED

Payload: `type: DamageMeterType, sessionID: number`  
Flags: UniqueEvent  

### DAMAGE_METER_CURRENT_SESSION_UPDATED

Payload: `none`  
Flags: UniqueEvent  

### DAMAGE_METER_RESET

Payload: `none`  
Flags: UniqueEvent  

## Tables

### DamageMeterAvailableCombatSession (Structure)

Data for a combat session currently being tracked.

- `sessionID: number`
- `name: cstring`
- `durationSeconds: number?`

### DamageMeterCombatSession (Structure)

Aggregated data for all sources (units) in a damage meter combat session.

- `combatSources: table<DamageMeterCombatSource>`
- `maxAmount: number = 0`
- `totalAmount: number = 0`
- `durationSeconds: number?`

### DamageMeterCombatSessionSource (Structure)

Data for a single source (unit) in a combat session.

- `combatSpells: table<DamageMeterCombatSpell>`
- `maxAmount: number = 0`
- `totalAmount: number = 0`

### DamageMeterCombatSource (Structure)

Aggregated data for a single source (unit) in a damage meter combat session.

- `sourceGUID: WOWGUID?`
- `sourceCreatureID: number?`
- `name: cstring`
- `classFilename: cstring`
- `specIconID: fileID`
- `totalAmount: number`
- `amountPerSecond: number`
- `isLocalPlayer: bool`
- `deathRecapID: number`
- `deathTimeSeconds: number`
- `classification: cstring`
- `sourceDisplayType: DamageMeterSourceDisplayType`
- `factionGroup: cstring?`

### DamageMeterCombatSpell (Structure)

Aggregated data for all spells of the same ID cast by a single source (unit) in a combat session.

- `spellID: number`
- `totalAmount: number`
- `amountPerSecond: number`
- `creatureName: cstring`
- `overkillAmount: number`
- `isAvoidable: bool`
- `isDeadly: bool`
- `combatSpellDetails: DamageMeterCombatSpellUnitDetails`

### DamageMeterCombatSpellUnitDetails (Structure)

Amount for a single target for all casts of the same spellID by a single source (unit) in a combat session.

- `unitName: cstring`
- `unitClassFilename: cstring`
- `classification: cstring`
- `isPet: bool`
- `isMob: bool`
- `amount: number`
- `specIconID: fileID`
