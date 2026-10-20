# SimpleMovieAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleMovieAPI:EnableSubtitles

```lua
SimpleMovieAPI:EnableSubtitles(enable: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMovieAPI:StartMovie

```lua
SimpleMovieAPI:StartMovie(movieID: number, looping: bool = false) -> success: bool, returnCode: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMovieAPI:StartMovieByName

```lua
SimpleMovieAPI:StartMovieByName(movieName: cstring, looping: bool = false, resolution: number = 0) -> success: bool, returnCode: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMovieAPI:StopMovie

```lua
SimpleMovieAPI:StopMovie()
```
