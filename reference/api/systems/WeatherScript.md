# WeatherScript

Type: System  
Namespace: `C_Weather`  
Environment: All

Cloudy, with a chance of documentation.

## Functions

### C_Weather.GetCurrentWeather

```lua
C_Weather.GetCurrentWeather() -> info: WeatherInfo
```

C_Weather the outlook is favorable.

## Events

### WEATHER_CHANGED

Payload: `none`  
Flags: UniqueEvent  
The weather has taken a turn.

## Tables

### WeatherInfo (Structure)

- `type: WeatherType = Clear`
- `intensity: number`
