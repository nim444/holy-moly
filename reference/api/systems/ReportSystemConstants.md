# ReportSystemConstants

Type: None

## Tables

### ReportEvidenceType (Enumeration)

| Name | Value |
|---|---|
| Invalid | 0 |
| HouseScreenshot | 1 |
| HouseLayoutJson | 2 |

### ReportMajorCategory (Enumeration)

| Name | Value |
|---|---|
| InappropriateCommunication | 0 |
| GameplaySabotage | 1 |
| Cheating | 2 |
| InappropriateName | 3 |
| InappropriateDecor | 4 |
| InappropriateBlueprint | 5 |

### ReportMinorCategory (Enumeration)

| Name | Value |
|---|---|
| TextChat | 1 |
| Boosting | 2 |
| Spam | 4 |
| Afk | 8 |
| IntentionallyFeeding | 16 |
| BlockingProgress | 32 |
| Hacking | 64 |
| Botting | 128 |
| Advertisement | 256 |
| BTag | 512 |
| GroupName | 1024 |
| CharacterName | 2048 |
| GuildName | 4096 |
| Description | 8192 |
| Name | 16384 |
| HarmfulToMinors | 32768 |
| Disruption | 65536 |
| TerroristAndViolentExtremistContent | 131072 |
| ChildSexualExploitationAndAbuse | 262144 |
| NeighborhoodName | 524288 |
| HousingBlueprint | 1048576 |

### ReportSubComplaintTypes (Enumeration)

| Name | Value |
|---|---|
| Inappropriate | 0 |
| Advertising | 1 |

### ReportThrottleType (Enumeration)

| Name | Value |
|---|---|
| Invalid | 0 |
| General | 1 |
| Expensive | 2 |

### ReportType (Enumeration)

| Name | Value |
|---|---|
| Chat | 0 |
| InWorld | 1 |
| ClubFinderPosting | 2 |
| ClubFinderApplicant | 3 |
| GroupFinderPosting | 4 |
| GroupFinderApplicant | 5 |
| ClubMember | 6 |
| GroupMember | 7 |
| Friend | 8 |
| Pet | 9 |
| BattlePet | 10 |
| Calendar | 11 |
| Mail | 12 |
| PvP | 13 |
| PvPScoreboard | 14 |
| PvPGroupMember | 15 |
| CraftingOrder | 16 |
| RecentAlly | 17 |
| HousingDecor | 18 |
| Neighborhood | 19 |
| NeighborhoodRoster | 20 |
| HousingBlueprint | 21 |

### ScreenshotSource (Enumeration)

| Name | Value |
|---|---|
| Automatic | 0 |
| PlayerReport | 1 |
| Cheat | 2 |

### SendReportResult (Enumeration)

| Name | Value |
|---|---|
| Success | 0 |
| GeneralError | 1 |
| TooManyReports | 2 |
| RequiresChatLine | 3 |
| RequiresChatLineOrVoice | 4 |
| RequiresScreenshot | 5 |
