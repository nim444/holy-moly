# PlayerInfoShared

Type: None

## Tables

### CharacterAlternateFormData (Structure)

- `raceID: number`
- `name: cstring`
- `fileName: cstring`
- `createScreenIconAtlas: textureAtlas`

### PlayerInfoCharacterData (Structure)

- `name: cstring`
- `fileName: cstring`
- `alternateFormRaceData: CharacterAlternateFormData?`
- `createScreenIconAtlas: textureAtlas`
- `sex: UnitSex`
