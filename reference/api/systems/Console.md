# Console

Type: System  
Environment: All

## Functions

### CalculateStringEditDistance

```lua
CalculateStringEditDistance(firstString: stringView, secondString: stringView) -> distance: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### ConsoleEcho

```lua
ConsoleEcho(command: cstring, addToHistory: bool = false, prefix: cstring?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### ConsoleExec

```lua
ConsoleExec(command: cstring, addToHistory: bool = false) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### ConsoleGetAllCommands

```lua
ConsoleGetAllCommands() -> commands: table<ConsoleCommandInfo>
```

### ConsoleGetColorFromType

```lua
ConsoleGetColorFromType(colorType: ConsoleColorType) -> color: colorRGB
```

Secret: SecretArguments=AllowedWhenUntainted  

### ConsoleGetFontHeight

```lua
ConsoleGetFontHeight() -> fontHeightInPixels: number
```

### ConsoleIsActive

```lua
ConsoleIsActive() -> consoleIsActive: bool
```

### ConsolePrintAllMatchingCommands

```lua
ConsolePrintAllMatchingCommands(partialCommandText: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### ConsoleSetFontHeight

```lua
ConsoleSetFontHeight(fontHeightInPixels: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetConsoleKey

```lua
SetConsoleKey(keystring: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### CONSOLE_CLEAR

Payload: `none`  
Flags: UniqueEvent  

### CONSOLE_COLORS_CHANGED

Payload: `none`  
Flags: UniqueEvent  

### CONSOLE_FONT_SIZE_CHANGED

Payload: `none`  
Flags: UniqueEvent  

### CONSOLE_LOG

Payload: `message: cstring`  
Flags: SynchronousEvent  

### CONSOLE_MESSAGE

Payload: `message: cstring, colorType: number`  
Flags: SynchronousEvent  

### CVAR_UPDATE

Payload: `eventName: cstring, value: cstring`  
Flags: SynchronousEvent  

### TOGGLE_CONSOLE

Payload: `showConsole: bool?`  
Flags: SynchronousEvent  

## Tables

### ConsoleCategory (Enumeration)

| Name | Value |
|---|---|
| Debug | 0 |
| Graphics | 1 |
| Console | 2 |
| Combat | 3 |
| Game | 4 |
| Default | 5 |
| Net | 6 |
| Sound | 7 |
| Gm | 8 |
| Reveal | 9 |
| None | 10 |

### ConsoleColorType (Enumeration)

| Name | Value |
|---|---|
| DefaultColor | 0 |
| InputColor | 1 |
| EchoColor | 2 |
| ErrorColor | 3 |
| WarningColor | 4 |
| GlobalColor | 5 |
| AdminColor | 6 |
| HighlightColor | 7 |
| BackgroundColor | 8 |
| ClickbufferColor | 9 |
| PrivateColor | 10 |
| DefaultGreen | 11 |

### ConsoleCommandType (Enumeration)

| Name | Value |
|---|---|
| Cvar | 0 |
| Command | 1 |
| Macro | 2 |
| Script | 3 |

### ConsoleCommandInfo (Structure)

- `command: cstring`
- `help: cstring`
- `category: ConsoleCategory`
- `commandType: ConsoleCommandType`
- `scriptContents: cstring`
- `scriptParameters: cstring`
