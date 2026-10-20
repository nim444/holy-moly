# Movie

Type: System  
Environment: All

## Functions

### CancelPreloadingMovie

```lua
CancelPreloadingMovie(movieId: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetMovieDownloadProgress

```lua
GetMovieDownloadProgress(movieId: number) -> inProgress: bool, downloaded: BigUInteger, total: BigUInteger
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsMovieLocal

```lua
IsMovieLocal(movieId: number) -> isLocal: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsMoviePlayable

```lua
IsMoviePlayable(movieId: number) -> isPlayable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsMovieReadable

```lua
IsMovieReadable(movieId: number) -> readable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### PreloadMovie

```lua
PreloadMovie(movieId: number)
```

Secret: SecretArguments=AllowedWhenUntainted
