# ColorUtil

Type: System  
Namespace: `C_ColorUtil`  
Environment: All

## Functions

### C_ColorUtil.ConvertHSLToHSV

```lua
C_ColorUtil.ConvertHSLToHSV(hslH: number, hslS: number, hslL: number) -> hsvH: number, hsvS: number, hsvV: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Converts an unpacked HSL color to HSV.

### C_ColorUtil.ConvertHSVToHSL

```lua
C_ColorUtil.ConvertHSVToHSL(hsvH: number, hsvS: number, hsvV: number) -> hslH: number, hslS: number, hslL: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Converts an unpacked HSV color to HSL.

### C_ColorUtil.ConvertHSVToRGB

```lua
C_ColorUtil.ConvertHSVToRGB(hsvH: number, hsvS: number, hsvV: number) -> rgbR: number, rgbG: number, rgbB: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Converts an unpacked HSV color to RGB.

### C_ColorUtil.ConvertRGBToHSV

```lua
C_ColorUtil.ConvertRGBToHSV(rgbR: number, rgbG: number, rgbB: number) -> hsvH: number, hsvS: number, hsvV: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Converts an unpacked RGB color to HSV. For achromatic inputs, the returned hue will be -1.

### C_ColorUtil.GenerateTextColorCode

```lua
C_ColorUtil.GenerateTextColorCode(color: colorRGB) -> textColorCode: string
```

Secret: SecretArguments=AllowedWhenTainted  

Generates a hex color code suitable for use in text color code markup.

### C_ColorUtil.WrapTextInColor

```lua
C_ColorUtil.WrapTextInColor(text: cstring, color: colorRGB) -> coloredText: string
```

Secret: SecretArguments=AllowedWhenTainted  

Wraps a given string with color code markup.

### C_ColorUtil.WrapTextInColorCode

```lua
C_ColorUtil.WrapTextInColorCode(text: cstring, textColorCode: cstring) -> coloredText: string
```

Secret: SecretArguments=AllowedWhenTainted  

Wraps a given string with color code markup.
