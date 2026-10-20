# MythicPlusInfoShared

Type: None

## Tables

### MythicPlusAffixScoreInfo (Structure)

Information about a specific M+ run

- `name: string`
- `score: number`
- `level: number`
- `durationSec: number`
- `overTime: bool`

### MythicPlusLeaderboardPlayerResult (Structure)

- `playerGUID: WOWGUID`
- `specID: number`

### MythicPlusLeaderboardResult (Structure)

- `completionTime: number`
- `players: table<MythicPlusLeaderboardPlayerResult>`

### MythicPlusRatingLinkInfo (Structure)

- `mapChallengeModeID: number`
- `level: number`
- `completedInTime: number`
- `dungeonScore: number`
- `name: string`
