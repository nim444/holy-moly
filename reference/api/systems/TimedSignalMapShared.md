# TimedSignalMapShared

Type: None

## Tables

### TimedSignalMapEntry (Structure)

Structure associating a key with a scheduled time.

- `key: number` The key that has been scheduled.
- `time: FrameTime` Absolute time, on the same clock as GetTime(), at which the key is scheduled to signal.

### TimedSignalMapCallback (CallbackType)

Invoked by a timed signal map when a scheduled time has arrived.

- `key: number` The key whose scheduled time has arrived; secret if the timed signal map has secret values.

## Preconditions

- `RequiresTimedSignalMapAccess` (FailureMode=Error)
