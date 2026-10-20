# DateAndTime

Type: System  
Namespace: `C_DateAndTime`  
Environment: All

## Functions

### C_DateAndTime.AdjustTimeByDays

```lua
C_DateAndTime.AdjustTimeByDays(date: CalendarTime, days: number) -> newDate: CalendarTime
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DateAndTime.AdjustTimeByMinutes

```lua
C_DateAndTime.AdjustTimeByMinutes(date: CalendarTime, minutes: number) -> newDate: CalendarTime
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DateAndTime.AdjustTimeByMonths

```lua
C_DateAndTime.AdjustTimeByMonths(date: CalendarTime, months: number) -> newDate: CalendarTime
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DateAndTime.CompareCalendarTime

```lua
C_DateAndTime.CompareCalendarTime(lhsCalendarTime: CalendarTime, rhsCalendarTime: CalendarTime) -> comparison: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DateAndTime.GetCalendarTimeFromEpoch

```lua
C_DateAndTime.GetCalendarTimeFromEpoch(epoch: BigUInteger) -> date: CalendarTime
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DateAndTime.GetCurrentCalendarTime

```lua
C_DateAndTime.GetCurrentCalendarTime() -> date: CalendarTime
```

### C_DateAndTime.GetSecondsUntilDailyReset

```lua
C_DateAndTime.GetSecondsUntilDailyReset() -> seconds: time_t
```

### C_DateAndTime.GetSecondsUntilWeeklyReset

```lua
C_DateAndTime.GetSecondsUntilWeeklyReset() -> seconds: time_t
```

### C_DateAndTime.GetServerTimeLocal

```lua
C_DateAndTime.GetServerTimeLocal() -> serverTimeLocal: time_t
```

### C_DateAndTime.GetWeeklyResetStartTime

```lua
C_DateAndTime.GetWeeklyResetStartTime() -> seconds: time_t
```

### C_DateAndTime.IsDayTime

```lua
C_DateAndTime.IsDayTime() -> isDayTime: bool
```

## Events

### DIEL_CYCLE_CHANGED

Payload: `isDayTime: bool`  
Flags: SynchronousEvent  
Signaled when the game time transitions between day and night.

## Tables

### TimeEventFlag (Enumeration)

| Name | Value |
|---|---|
| GlueScreenShortcut | 1 |
| WeeklyReset | 2 |
| GlobalLaunch | 4 |
