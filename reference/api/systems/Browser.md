# Browser

Type: System  
Namespace: `C_Browser`  
Environment: All

## Functions

### C_Browser.CloseFullscreenBrowser

```lua
C_Browser.CloseFullscreenBrowser()
```

## Events

### FULLSCREEN_BROWSER_SPINNER_HIDE

Payload: `none`  
Flags: SynchronousEvent  

### FULLSCREEN_BROWSER_SPINNER_SHOW

Payload: `none`  
Flags: SynchronousEvent  

### SIMPLE_BROWSER_POPUP

Payload: `url: string`  
Flags: SynchronousEvent  

### SIMPLE_BROWSER_SOCIAL_CALLBACK_INVOKED

Payload: `url: string`  
Flags: UniqueEvent  

### SIMPLE_BROWSER_WEB_ERROR

Payload: `errorCode: number`  
Flags: SynchronousEvent  

### SIMPLE_BROWSER_WEB_PROXY_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### SIMPLE_CHECKOUT_CLOSED

Payload: `none`  
Flags: SynchronousEvent
