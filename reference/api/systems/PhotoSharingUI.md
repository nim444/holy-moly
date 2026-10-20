# PhotoSharingUI

Type: System  
Namespace: `C_PhotoSharing`  
Environment: All

## Functions

### C_PhotoSharing.BeginAuthorizationFlow

```lua
C_PhotoSharing.BeginAuthorizationFlow()
```

### C_PhotoSharing.ClearAuthorization

```lua
C_PhotoSharing.ClearAuthorization()
```

### C_PhotoSharing.CompleteAuthorizationFlow

```lua
C_PhotoSharing.CompleteAuthorizationFlow(callbackURL: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PhotoSharing.GetCropRatio

```lua
C_PhotoSharing.GetCropRatio() -> cropRatio: number
```

### C_PhotoSharing.GetPhotoSharingAuthURL

```lua
C_PhotoSharing.GetPhotoSharingAuthURL() -> authUrl: cstring
```

### C_PhotoSharing.GetStatus

```lua
C_PhotoSharing.GetStatus() -> status: PhotoSharingStatus
```

### C_PhotoSharing.IsAuthorized

```lua
C_PhotoSharing.IsAuthorized() -> authorized: bool
```

### C_PhotoSharing.IsEnabled

```lua
C_PhotoSharing.IsEnabled() -> enabled: bool
```

### C_PhotoSharing.SetScreenshotPreviewTexture

```lua
C_PhotoSharing.SetScreenshotPreviewTexture(textureObject: SimpleTexture)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PhotoSharing.TakePhoto

```lua
C_PhotoSharing.TakePhoto()
```

### C_PhotoSharing.UploadPhotoToService

```lua
C_PhotoSharing.UploadPhotoToService(optionalTitle: cstring = , optionalDescription: cstring = )
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### PHOTO_SHARING_AUTHORIZATION_NEEDED

Payload: `none`  
Flags: SynchronousEvent  

### PHOTO_SHARING_AUTHORIZATION_UPDATED

Payload: `showNotification: bool`  
Flags: SynchronousEvent  

### PHOTO_SHARING_PHOTO_UPLOAD_STATUS

Payload: `uploadStatus: PhotoSharingUploadStatus`  
Flags: SynchronousEvent  

### PHOTO_SHARING_SCREENSHOT_READY

Payload: `none`  
Flags: SynchronousEvent  

### PHOTO_SHARING_THIRD_PARTY_AUTHORIZATION_NEEDED

Payload: `authUrl: string`  
Flags: SynchronousEvent
