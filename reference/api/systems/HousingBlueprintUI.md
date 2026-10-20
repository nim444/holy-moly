# HousingBlueprintUI

Type: System  
Namespace: `C_HousingBlueprint`  
Environment: All

## Functions

### C_HousingBlueprint.CanExportRoom

```lua
C_HousingBlueprint.CanExportRoom(roomGUID: WOWGUID) -> canExport: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the specific room is allowed to be exported

### C_HousingBlueprint.CanExportTypeFromCurrentLocation

```lua
C_HousingBlueprint.CanExportTypeFromCurrentLocation(type: HousingBlueprintType) -> locationValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the player's current location is a valid place to attempt to export a specific kind of blueprint

### C_HousingBlueprint.CanImportTypeFromCurrentLocation

```lua
C_HousingBlueprint.CanImportTypeFromCurrentLocation(type: HousingBlueprintType) -> locationValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the player's current location is a valid place to attempt to import a specific kind of blueprint

### C_HousingBlueprint.DeleteBlueprint

```lua
C_HousingBlueprint.DeleteBlueprint(blueprintID: BigUInteger)
```

Secret: SecretArguments=AllowedWhenUntainted  

Delete the specified owned blueprint; Listen for HousingBlueprintDeleteSuccess and HousingBlueprintDeleteFailure for results

### C_HousingBlueprint.ExportBlueprint

```lua
C_HousingBlueprint.ExportBlueprint(type: HousingBlueprintType, name: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Saves out a new Blueprint of the specified type, using the specified name, if available, based on where the player is currently standing (see GetExportAvailability); Listen for HousingBlueprintExportSuccess and HousingBlueprintExportFailure for results

### C_HousingBlueprint.ExportRoomBlueprint

```lua
C_HousingBlueprint.ExportRoomBlueprint(name: cstring, roomGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

Saves out a new Blueprint of the specified room, using the specified name, if available (see GetExportAvailability); Listen for HousingBlueprintExportSuccess and HousingBlueprintExportFailure for results

### C_HousingBlueprint.GetBlueprintHyperlink

```lua
C_HousingBlueprint.GetBlueprintHyperlink(blueprintShareCode: cstring) -> hyperLink: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_HousingBlueprint.GetBlueprintTypeForCode

```lua
C_HousingBlueprint.GetBlueprintTypeForCode(shareCode: cstring) -> type: HousingBlueprintType
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns what type of Blueprint the specified code is for; Will return HousingBlueprintType.None if code is invalid; Does NOT check whether the shareCode actually matches up to a real valid Blueprint

### C_HousingBlueprint.GetExportAvailability

```lua
C_HousingBlueprint.GetExportAvailability() -> availability: HousingResult
```

Returns success if the player can currently export Blueprints, or a specific error type (ex: invalid location or permissions)

### C_HousingBlueprint.GetFeatureAvailability

```lua
C_HousingBlueprint.GetFeatureAvailability() -> blueprintsAvailability: HousingResult
```

Returns success if Blueprints as a feature is currently enabled and available

### C_HousingBlueprint.GetImportAvailability

```lua
C_HousingBlueprint.GetImportAvailability() -> availability: HousingResult
```

Returns success if the player can currently import Blueprints, or a specific error type (ex: invalid location or permissions)

### C_HousingBlueprint.ImportBlueprint

```lua
C_HousingBlueprint.ImportBlueprint(shareCode: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Imports the specified blueprint, if available (see GetImportAvailability and CanImportTypeFromCurrentLocation); Listen for HousingBlueprintImportSuccess and HousingBlueprintImportFailure for results

### C_HousingBlueprint.IsShareCodeValid

```lua
C_HousingBlueprint.IsShareCodeValid(shareCode: cstring) -> isValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the string matches the valid expected format for a Blueprint Share Code; Does NOT check whether the shareCode actually matches up to a real valid Blueprint

### C_HousingBlueprint.RenameBlueprint

```lua
C_HousingBlueprint.RenameBlueprint(blueprintID: BigUInteger, newName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Rename the specified owned blueprint to the specified name; Listen for HousingBlueprintRenameSuccess and HousingBlueprintRenameFailure for results

### C_HousingBlueprint.RequestBlueprintCollection

```lua
C_HousingBlueprint.RequestBlueprintCollection()
```

Request the full list of all of the player's Blueprints; This is async, either the HOUSING_BLUEPRINT_COLLECTION_RECEIVED or HOUSING_BLUEPRINT_COLLECTION_FAILURE event will eventually be fired as a result

### C_HousingBlueprint.RequestBlueprintContents

```lua
C_HousingBlueprint.RequestBlueprintContents(shareCode: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Request the full contents of a specific Blueprint, in context of the current owned plot or house (if any); This is async as content info includes dynamic data from the server, either the HOUSING_BLUEPRINT_CONTENTS_RECEIVED or HOUSING_BLUEPRINT_CONTENTS_FAILURE event will eventually be fired as a result; Calling this again before a prior request has finished will cancel the prior request

### C_HousingBlueprint.RequestBlueprintContentsForContext

```lua
C_HousingBlueprint.RequestBlueprintContentsForContext(shareCode: cstring, optionalHouseGUID: WOWGUID?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Request the full contents of a specific Blueprint, either in context of a specific owned House or plot, or explicitly outside of any specific context; Typically used to update missing requirement info from previously-retrieved contents; See RequestBlueprintContents for other notes

### C_HousingBlueprint.StartImportRoomBlueprint

```lua
C_HousingBlueprint.StartImportRoomBlueprint(shareCode: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Start the process of importing a Room Blueprint. This will lead to Layout Mode being opened, so the player can then select an available door to attach the room to

### C_HousingBlueprint.UpdateBlueprintStringFromInput

```lua
C_HousingBlueprint.UpdateBlueprintStringFromInput(inputShareCode: cstring) -> updatedShareCode: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

## Events

### HOUSING_BLUEPRINT_COLLECTION_FAILURE

Payload: `result: HousingResult`  
Flags: SynchronousEvent  

### HOUSING_BLUEPRINT_COLLECTION_RECEIVED

Payload: `collection: HousingBlueprintCollection`  
Flags: SynchronousEvent  

### HOUSING_BLUEPRINT_CONTENTS_FAILURE

Payload: `blueprintShareCode: string, result: HousingResult`  
Flags: SynchronousEvent  

### HOUSING_BLUEPRINT_CONTENTS_RECEIVED

Payload: `contentInfo: HousingBlueprintContentInfo`  
Flags: SynchronousEvent  

### HOUSING_BLUEPRINT_DELETE_FAILURE

Payload: `blueprintID: BigUInteger, result: HousingResult`  
Flags: SynchronousEvent  

### HOUSING_BLUEPRINT_DELETE_SUCCESS

Payload: `blueprintID: BigUInteger`  
Flags: SynchronousEvent  

### HOUSING_BLUEPRINT_EXPORT_FAILURE

Payload: `result: HousingResult`  
Flags: SynchronousEvent  

### HOUSING_BLUEPRINT_EXPORT_SUCCESS

Payload: `blueprintShareCode: string`  
Flags: SynchronousEvent  

### HOUSING_BLUEPRINT_IMPORT_FAILURE

Payload: `result: HousingResult`  
Flags: SynchronousEvent  

### HOUSING_BLUEPRINT_IMPORT_STARTED

Payload: `none`  
Flags: SynchronousEvent  

### HOUSING_BLUEPRINT_IMPORT_SUCCESS

Payload: `none`  
Flags: SynchronousEvent  

### HOUSING_BLUEPRINT_RENAME_FAILURE

Payload: `blueprintID: BigUInteger, result: HousingResult`  
Flags: SynchronousEvent  

### HOUSING_BLUEPRINT_RENAME_SUCCESS

Payload: `blueprintID: BigUInteger, name: string`  
Flags: SynchronousEvent  

### HOUSING_BLUEPRINTS_AVAILABILITY_CHANGED

Payload: `none`  
Flags: SynchronousEvent
